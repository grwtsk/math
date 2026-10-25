# memₗ.congr_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c04ed6a28216678fba851ea8d5670840a4d6459e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01d61eb3-8205-9535-6519-14fd00964c9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1082ae73-d4c3-c65b-20ec-ef7c28e75773",
  "kind": "theorem",
  "lexical_name": "memₗ.congr_right",
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
  "slug": "mem-congr-right--8608a6f05e3c7caa98489e62",
  "source": {
    "blob": "c04ed6a28216678fba851ea8d5670840a4d6459e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8608a6f05e3c7caa98489e62b3c14a6285c8f1597099ca49a962d065383384c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1082ae73-d4c3-c65b-20ec-ef7c28e75773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memₗ.congr_right : ∀ {x y : PGame},
    x ≡ y → (∀ {w : PGame}, w ∈ₗ x ↔ w ∈ₗ y)
  | mk _ _ _ _, mk _ _ _ _, ⟨⟨h₁, h₂⟩, _⟩, _w =>
    ⟨fun ⟨i, hi⟩ ↦ (h₁ i).imp (fun _ ↦ hi.trans),
      fun ⟨j, hj⟩ ↦ (h₂ j).imp (fun _ hi ↦ hj.trans hi.symm)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04ed6a28216678fba851ea8d5670840a4d6459e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
