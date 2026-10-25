# ofPred_mem_list_eq_singleton_of_nodup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abe17f35-4002-1d59-c61f-63a98b632b76",
  "kind": "theorem",
  "lexical_name": "ofPred_mem_list_eq_singleton_of_nodup",
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
  "slug": "ofpred-mem-list-eq-singleton-of-nodup--88bff2ccd94721ae109bd947",
  "source": {
    "blob": "ea2ed97c2448be9f86a63441533a9ff830776d66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 292,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant35930ae86307ef48a3f0f1d0caeefb2549fe72d91a46f7430a6998ed1978c3aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88bff2ccd94721ae109bd94727982412dcf0286bb105fcf91823d48af826f857",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant35930ae86307ef48a3f0f1d0caeefb2549fe72d91a46f7430a6998ed1978c3aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abe17f35-4002-1d59-c61f-63a98b632b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPred_mem_list_eq_singleton_of_nodup {l : List α} (H : l.Nodup) {a : α} :
    { x | x ∈ l } = {a} ↔ l = [a] := by
  constructor
  · rw [ofPred_mem_list_eq_replicate]
    rintro ⟨n, hn, rfl⟩
    simp only [List.nodup_replicate] at H
    simp [show n = 1 by lia]
  · rintro rfl
    simp

@[deprecated (since := "2026-07-09")]
alias setOf_mem_list_eq_singleton_of_nodup := ofPred_mem_list_eq_singleton_of_nodup

-- while `simp` is capable of proving this, it is not capable of turning the LHS into the RHS.
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant35930ae86307ef48a3f0f1d0caeefb2549fe72d91a46f7430a6998ed1978c3aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant35930ae86307ef48a3f0f1d0caeefb2549fe72d91a46f7430a6998ed1978c3aa.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea2ed97c2448be9f86a63441533a9ff830776d66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
