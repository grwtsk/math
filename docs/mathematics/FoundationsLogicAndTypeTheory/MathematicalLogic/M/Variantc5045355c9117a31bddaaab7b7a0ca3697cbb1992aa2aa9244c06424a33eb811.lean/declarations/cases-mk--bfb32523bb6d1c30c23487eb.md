# cases_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a55802af1401b592918670a607c98f0339995ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37ae2657-9065-56eb-10ff-855fa59391c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:169ea28f-9bfa-dc01-7f3a-5661cdc8671f",
  "kind": "theorem",
  "lexical_name": "cases_mk",
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
  "slug": "cases-mk--bfb32523bb6d1c30c23487eb",
  "source": {
    "blob": "2a55802af1401b592918670a607c98f0339995ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 437,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfb32523bb6d1c30c23487eb13f461f908b30219aefddef029274d6ae361a81a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:169ea28f-9bfa-dc01-7f3a-5661cdc8671f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cases_mk {r : M F → Sort*} (x : F.Obj <| M F) (f : ∀ x : F.Obj <| M F, r (M.mk x)) :
    PFunctor.M.cases f (M.mk x) = f x := by
  dsimp only [M.mk, PFunctor.M.cases, dest, head, Approx.sMk, head']
  cases x; dsimp only [Approx.sMk]
  simp only [Eq.mpr]
  apply congrFun
  rfl
set_option linter.uppercaseLean3 false in
#align pfunctor.M.cases_mk PFunctor.M.cases_mk

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a55802af1401b592918670a607c98f0339995ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
