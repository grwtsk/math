# flt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dfb73e3-9f73-2353-6f7c-f9c6db8e153b",
  "kind": "theorem",
  "lexical_name": "flt",
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
  "slug": "flt--bbebdac4bd87d94e0efdc030",
  "source": {
    "blob": "13d56844fee1506108ea96925d5bbf94bb258d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbebdac4bd87d94e0efdc0309e78f86d11c19fd12723f15e729828c172c6e8d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dfb73e3-9f73-2353-6f7c-f9c6db8e153b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flt : (sorry : Prop) := sorry

end MyNat

open Lean Architect in
run_meta
  let json ← mainModuleToJson
  let currFile ← (← getSrcSearchPath).findWithExt "lean" (← getEnv).header.mainModule
  assert! json == json%
[{"type": "node",
  "data":
  {"title": null,
   "statement":
   {"usesLabels": [],
    "uses": [],
    "text": "Natural numbers.",
    "latexEnv": "definition",
    "excludesLabels": [],
    "excludes": []},
   "proof": null,
   "notReady": false,
   "name": "MyNat",
   "location":
   {"range": {"pos": {"line": 3, "column": 0}, "endPos": {"line": 6, "column": 24}}, "module": "ArchitectTest.MyNat"},
   "latexLabel": "MyNat",
   "hasLean": true,
   "file": $(currFile),
   "discussion": null}},
 {"type": "node",
  "data":
  {"title": null,
   "statement":
   {"usesLabels": [],
    "uses": [],
    "text": "Natural number addition.",
    "latexEnv": "definition",
    "excludesLabels": [],
    "excludes": []},
   "proof": null,
   "notReady": false,
   "name": "MyNat.add",
   "location":
   {"range": {"pos": {"line": 12, "column": 0}, "endPos": {"line": 19, "column": 28}}, "module": "ArchitectTest.MyNat"},
   "latexLabel": "def:nat-add",
   "hasLean": true,
   "file": $(currFile),
   "discussion": null}},
 {"type": "node",
  "data":
  {"title": null,
   "statement":
   {"usesLabels": [],
    "uses": [],
    "text": "For any natural number $a$, $0 + a = a$, where $+$ is \\cref{def:nat-add}.",
    "latexEnv": "theorem",
    "excludesLabels": [],
    "excludes": []},
   "proof": {"usesLabels": [], "uses": [], "text": "", "latexEnv": "proof", "excludesLabels": [], "excludes": []},
   "notReady": false,
   "name": "MyNat.zero_add",
   "location":
   {"range": {"pos": {"line": 21, "column": 0}, "endPos": {"line": 25, "column": 31}}, "module": "ArchitectTest.MyNat"},
   "latexLabel": "MyNat.zero_add",
   "hasLean": true,
   "file": $(currFile),
   "discussion": null}},
 {"type": "node",
  "data":
  {"title": null,
   "statement":
   {"usesLabels": [],
    "uses": [],
    "text": "For any natural numbers $a, b$, $(a + 1) + b = (a + b) + 1$.",
    "latexEnv": "theorem",
    "excludesLabels": [],
    "excludes": []},
   "proof": {"usesLabels": [], "uses": [], "text": "", "latexEnv": "proof", "excludesLabels": [], "excludes": []},
   "notReady": false,
   "name": "MyNat.succ_add",
   "location":
   {"range": {"pos": {"line": 27, "column": 0}, "endPos": {"line": 32, "column": 7}}, "module": "ArchitectTest.MyNat"},
   "latexLabel": "MyNat.succ_add",
   "hasLean": true,
   "file": $(currFile),
   "discussion": null}},
 {"type": "node",
  "data":
  {"title": null,
   "statement":
   {"usesLabels": [],
    "uses": [],
    "text": "For any natural numbers $a, b$, $a + b = b + a$.",
    "latexEnv": "theorem",
    "excludesLabels": [],
    "excludes": []},
   "proof": {"usesLabels": [], "uses": [], "text": "", "latexEnv": "proof", "excludesLabels": [], "excludes": []},
   "notReady": false,
   "name": "MyNat.add_comm",
   "location":
   {"range": {"pos": {"line": 34, "column": 0}, "endPos": {"line": 44, "column": 26}}, "module": "ArchitectTest.MyNat"},
   "latexLabel": "MyNat.add_comm",
   "hasLean": true,
   "file": $(currFile),
   "discussion": null}},
 {"type": "node",
  "data":
  {"title": null,
   "statement":
   {"usesLabels": [],
    "uses": ["MyNat.add"],
    "text": "Natural number multiplication.",
    "latexEnv": "definition",
    "excludesLabels": [],
    "excludes": []},
   "proof": null,
   "notReady": false,
   "name": "MyNat.mul",
   "location":
   {"range": {"pos": {"line": 48, "column": 0}, "endPos": {"line": 51, "column": 38}}, "module": "ArchitectTest.MyNat"},
   "latexLabel": "MyNat.mul",
   "hasLean": true,
   "file": $(currFile),
   "discussion": null}},
 {"type": "node",
  "data":
  {"title": null,
   "statement":
   {"usesLabels": [],
    "uses": [],
    "text": "For any natural numbers $a, b$, $a * b = b * a$.",
    "latexEnv": "theorem",
    "excludesLabels": [],
    "excludes": []},
   "proof": {"usesLabels": [], "uses": [], "text": "", "latexEnv": "proof", "excludesLabels": [], "excludes": []},
   "notReady": false,
   "name": "MyNat.mul_comm",
   "location":
   {"range": {"pos": {"line": 53, "column": 0}, "endPos": {"line": 55, "column": 62}}, "module": "ArchitectTest.MyNat"},
   "latexLabel": "MyNat.mul_comm",
   "hasLean": true,
   "file": $(currFile),
   "discussion": null}},
 {"type": "node",
  "data":
  {"title": "Taylor-Wiles",
   "statement":
   {"usesLabels": [],
    "uses": ["MyNat.mul"],
    "text": "Fermat's last theorem.",
    "latexEnv": "theorem",
    "excludesLabels": [],
    "excludes": []},
   "proof":
   {"usesLabels": [],
    "uses": ["MyNat.mul_comm"],
    "text": "See \\cite{Wiles1995, Taylor-Wiles1995}.",
    "latexEnv": "proof",
    "excludesLabels": [],
    "excludes": []},
   "notReady": true,
   "name": "MyNat.flt",
   "location":
   {"range": {"pos": {"line": 59, "column": 0}, "endPos": {"line": 68, "column": 37}}, "module": "ArchitectTest.MyNat"},
   "latexLabel": "thm:flt",
   "hasLean": true,
   "file": $(currFile),
   "discussion": 1}}]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13d56844fee1506108ea96925d5bbf94bb258d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
