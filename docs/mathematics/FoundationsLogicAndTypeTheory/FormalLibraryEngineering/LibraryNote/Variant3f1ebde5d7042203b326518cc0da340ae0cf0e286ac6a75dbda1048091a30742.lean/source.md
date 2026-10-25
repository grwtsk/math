# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryNote.Variant3f1ebde5d7042203b326518cc0da340ae0cf0e286ac6a75dbda1048091a30742

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1557404a914bcc8f504d24ce49f23c0ba042bb0` · SHA-256 `3f1ebde5d7042203b326518cc0da340ae0cf0e286ac6a75dbda1048091a30742`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.HelpCmd
import BatteriesTest.Internal.DummyLibraryNote2

/--
error: Note not found
-/
#guard_msgs in
#help note "no note"

/--
info: library_note Other
/-- 1: this is a testnote with a label not starting with "te",
so it shouldn't appear when looking for notes with label starting with "te". -/
-/
#guard_msgs in
#help note "Other"

library_note «test4» /--
4: This note was not imported, and therefore appears below the imported notes.
-/

library_note «test5» /--
5: This note was also not imported, and therefore appears below the imported notes,
and the previously added note.
-/


/--
info: library_note «temporary note»
/-- 1: This is a testnote whose label also starts with "te", but gets sorted before "test" -/

library_note test1
/-- 1: This is a testnote for testing the library note feature of batteries.
The `#help note` command should be able to find this note when imported. -/

library_note test2
/-- 2: This is a second testnote for testing the library note feature of batteries. -/

library_note test3
/-- 3: this is a note in a different file importing the above testnotes,
but still imported by the actual testfile. -/

library_note test4
/-- 4: This note was not imported, and therefore appears below the imported notes. -/

library_note test5
/-- 5: This note was also not imported, and therefore appears below the imported notes,
and the previously added note. -/
-/
#guard_msgs in
#help note "te"

/-! ## Tests for space-to-underscore encoding in declaration names

Library notes with spaces in their names should create declarations with underscores,
for compatibility with the Lean export format (which doesn't support whitespace in names).
-/

-- Test that a note with spaces creates a declaration with underscores
library_note «note with spaces» /--
This note has spaces in its name to test export format compatibility.
-/

-- Verify the declaration name has underscores, not spaces
/-- info: LibraryNote.note_with_spaces : Batteries.Util.LibraryNote -/
#guard_msgs in
#check LibraryNote.note_with_spaces

-- Test that a note with multiple consecutive spaces works
library_note «note  with   multiple    spaces» /--
This note has multiple consecutive spaces.
-/

/-- info: LibraryNote.note__with___multiple____spaces : Batteries.Util.LibraryNote -/
#guard_msgs in
#check LibraryNote.note__with___multiple____spaces

/--
info: library_note «note with spaces»
/-- This note has spaces in its name to test export format compatibility. -/
-/
#guard_msgs in
#help note "note with"
```
