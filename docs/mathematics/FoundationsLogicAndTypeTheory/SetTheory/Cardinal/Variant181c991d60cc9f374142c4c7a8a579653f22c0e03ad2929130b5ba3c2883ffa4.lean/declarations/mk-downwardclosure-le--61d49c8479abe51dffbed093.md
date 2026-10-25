# mk_downwardClosure_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9ac3ebe-13fc-0cfc-dc6e-a43c2f6a0e08",
  "kind": "theorem",
  "lexical_name": "mk_downwardClosure_le",
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
  "slug": "mk-downwardclosure-le--61d49c8479abe51dffbed093",
  "source": {
    "blob": "2502e92cf74a1279d89cca8d278628f8edb783b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61d49c8479abe51dffbed093ce459e9f2f4fb68eddda02eca58e4b29d4d9c7fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9ac3ebe-13fc-0cfc-dc6e-a43c2f6a0e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_downwardClosure_le (P : Set (Set X)) (μ lam : Cardinal.{u})
    (hμ : μ.IsStrongLimit) (hμlam : μ ≤ lam)
    (hP : #P ≤ lam) (hsize : ∀ C ∈ P, #C < μ) :
    #(downwardClosure P) ≤ lam := by
  calc
    _ ≤ Cardinal.sum fun C : P ↦ 2 ^ #C.val := mk_downwardClosure_le_sum P
    _ ≤ lam * μ := sum_powerset_le_mul P μ lam hμ hP hsize
    _ = lam := Cardinal.mul_eq_left (hμ.aleph0_le.trans hμlam) hμlam hμ.ne_zero

/-- Coverage and exact reconstruction use the identical index cardinal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2502e92cf74a1279d89cca8d278628f8edb783b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
