# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryNote.Variant6a9e6f3ace80c7f18aaca7e53f3fab8dd566b7844861ca1389d392e94da63ccb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62b779cc56077ee00a28b2baf2c57e84eed14533` · SHA-256 `fcdc8bf38d16cf69cd1816d245bc1ecb3f8fd3d8e026d32b9cb0e630633a130a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HelpCmd.Variant3f1ebde5d7042203b326518cc0da340ae0cf0e286ac6a75dbda1048091a30742","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f1ebde5d7042203b326518cc0da340ae0cf0e286ac6a75dbda1048091a30742","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.HelpCmd.Variant3f1ebde5d7042203b326518cc0da340ae0cf0e286ac6a75dbda1048091a30742","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3f1ebde5d7042203b326518cc0da340ae0cf0e286ac6a75dbda1048091a30742","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/library_note.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.HelpCmd
import BatteriesTest.Internal.DummyLibraryNote2


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HelpCmd.Variant3f1ebde5d7042203b326518cc0da340ae0cf0e286ac6a75dbda1048091a30742

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
