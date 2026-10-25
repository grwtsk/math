# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3a105721c39c2f16667cc2e211d1ef7ad69c7aea2a0f16d35a09504fde9842c",
  "kind": "elab",
  "lexical_name": null,
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "elab--b7e1c1fecbf5a269bd6180c6",
  "source": {
    "blob": "e277e04ce79b975e960b469c6b84fa8f3cb1c69e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01a1d11ef249243d5c9c6d2e0d30d9b75c0667827af8042b506916ef6d76c394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e1c1fecbf5a269bd6180c6cd241951213ca37aa939a85911f86d45ba0f75a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01a1d11ef249243d5c9c6d2e0d30d9b75c0667827af8042b506916ef6d76c394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3a105721c39c2f16667cc2e211d1ef7ad69c7aea2a0f16d35a09504fde9842c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#check_copyright " copStx:str : command => do
  let cop := copStx.getString
  let offset := copStx.raw.getPos?.get!.increaseBy 1
  let expectedLicense := Mathlib.Linter.linter.style.header.license.get (← getOptions)
  for (s, m) in Mathlib.Linter.copyrightHeaderChecks cop expectedLicense do
    if let some rg := s.getRange? then
      logInfoAt (.ofRange ({start := rg.start.offsetBy offset, stop := rg.stop.offsetBy offset}))
        m!"Text: `{replaceMultilineComments s.getAtomVal}`\n\
           Range: {(rg.start, rg.stop)}\n\
           Message: '{replaceMultilineComments m}'"

-- well-formed
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName, Name LastName,
Name LastName,
 Name LastName,
  Name LastName
-/
"

/--
info: Text: ` |-`
Range: (0, 3)
Message: 'Malformed or missing copyright header: `|-` should be alone on its own line.'
-/
#guard_msgs in
#check_copyright
" /-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName
-/
"

-- The last line does not end with a newline.
/--
info: Text: `-|`
Range: (149, 151)
Message: 'Malformed or missing copyright header: `-|` should be alone on its own line.'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName
-/"

/--
info: Text: `Authors: Name LastName

Here comes an implicit docstring which doesn't belong here!`
Range: (126, 209)
Message: 'If an authors line spans multiple lines, each line but the last must end with a trailing comma'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName

Here comes an implicit docstring which doesn't belong here!
-/
"

/--
info: Text: `Authors: Name LastName
Here comes an implicit docstring which shouldn't be here!`
Range: (126, 206)
Message: 'If an authors line spans multiple lines, each line but the last must end with a trailing comma'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName
Here comes an implicit docstring which shouldn't be here!
-/
"

/--
info: Text: `-|`
Range: (126, 128)
Message: 'Copyright too short!'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
"

/--
info: Text: `-|`
Range: (1, 3)
Message: 'Copyright too short!'
-/
#guard_msgs in
#check_copyright ""

/--
info: Text: `-|`
Range: (1, 3)
Message: 'Copyright too short!'
-/
#guard_msgs in
#check_copyright ""

/--
info: Text: `Cpyright (c) 202`
Range: (3, 19)
Message: 'Copyright line should start with 'Copyright (c) YYYY''
-/
#guard_msgs in
#check_copyright
"/-
Cpyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName
-/
"

/--
info: Text: `a. All rights reserve.`
Range: (34, 56)
Message: 'Copyright line should end with '. All rights reserved.''
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserve.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName
-/
"

/--
info: Text: `Rleased under Apache 2.0 license as described in the file LICENSE.`
Range: (58, 124)
Message: 'Second copyright line should be
"Released under Apache 2.0 license as described in the file LICENSE."'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Rleased under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName
-/
"

-- The required second line is configurable via the `linter.style.header.license` option.
/--
info: Text: `Released under Apache 2.0 license as described in the file LICENSE.`
Range: (49, 116)
Message: 'Second copyright line should be "Released under the Custom License."'
-/
#guard_msgs in
set_option linter.style.header.license "Released under the Custom License." in
#check_copyright
"/-
Copyright (c) 2026 Name. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name
-/
"

-- A header whose second line matches the custom license is accepted.
set_option linter.style.header.license "Released under the Custom License." in
#check_copyright
"/-
Copyright (c) 2026 Name. All rights reserved.
Released under the Custom License.
Authors: Name
-/
"

/--
info: Text: `A uthors:`
Range: (126, 135)
Message: 'The authors line should begin with 'Authors: ''
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
A uthors: Name LastName
-/
"

/--
info: Text: `  `
Range: (139, 141)
Message: 'Double spaces are not allowed.'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name  LastName
-/
"

/--
info: Text: `.`
Range: (148, 149)
Message: 'Please, do not end the authors' line with a period.'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName.
-/
"

/--
info: Text: `  `
Range: (149, 151)
Message: 'Double spaces are not allowed.'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName,
   Name LastName
-/
"

-- The `Copyright` and `Authors` lines are allowed to overflow.
#check_copyright
"/-
Copyright (c) 2019 Reid Barton, Johan Commelin, Jesse Michael Han, Chris Hughes, Robert Y. Lewis,
Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton, Johan Commelin, Jesse Michael Han, Chris Hughes, Robert Y. Lewis,
  Patrick Massot
-/
"

-- However, in this case the wrapped lines must end with a comma.
/--
info: Text: `(c) 2024 Damiano Testa`
Range: (13, 35)
Message: 'Copyright line should end with '. All rights reserved.''
---
info: Text: `Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName
  and others.`
Range: (83, 187)
Message: 'If an authors line spans multiple lines, each line but the last must end with a trailing comma'
---
info: Text: `Released `
Range: (83, 92)
Message: 'The authors line should begin with 'Authors: ''
---
info: Text: `  `
Range: (174, 176)
Message: 'Double spaces are not allowed.'
---
info: Text: ` and `
Range: (175, 180)
Message: 'Please, do not use 'and'; use ',' instead.'
---
info: Text: `.`
Range: (106, 107)
Message: 'Please, do not end the authors' line with a period.'
---
info: Text: `  and many other authors. All rights reserved.`
Range: (36, 82)
Message: 'Second copyright line should be "Released under Apache 2.0 license as described in the file LICENSE."'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa
  and many other authors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Name LastName
  and others.
-/
"

/--
info: Text: `Authors:`
Range: (140, 148)
Message: 'The authors line should begin with 'Authors: ''
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 Damiano Testa, another Name. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors:
-/
"

/--
info: Text: `. All rights reserved.`
Range: (21, 43)
Message: ''Copyright (c) YYYY' should be followed by a space'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: A
-/
"

/--
info: Text: `. All rights reserved.`
Range: (22, 44)
Message: 'There should be at least one copyright author, separated from the year by exactly one space.'
-/
#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 . All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: A
-/
"

-- We don't do further validation of names.

#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 nameinalllowercase. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: A
-/
"

#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 First middle LastName. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: A
-/
"

#guard_msgs in
#check_copyright
"/-
Copyright (c) 2024 First Last Name jr.. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: A
-/
"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01a1d11ef249243d5c9c6d2e0d30d9b75c0667827af8042b506916ef6d76c394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01a1d11ef249243d5c9c6d2e0d30d9b75c0667827af8042b506916ef6d76c394.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e277e04ce79b975e960b469c6b84fa8f3cb1c69e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
