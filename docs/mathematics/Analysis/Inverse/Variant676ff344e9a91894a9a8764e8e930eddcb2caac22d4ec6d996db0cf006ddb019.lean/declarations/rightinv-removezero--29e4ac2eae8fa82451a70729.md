# rightInv_removeZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9847edf-15d3-ad88-27f4-af4ef5610471",
  "kind": "theorem",
  "lexical_name": "rightInv_removeZero",
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
  "slug": "rightinv-removezero--29e4ac2eae8fa82451a70729",
  "source": {
    "blob": "c64d69d3cc3617cbc299981ad781813f657778d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 195,
    "path": "GRWTSK/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e4ac2eae8fa82451a70729c435628a4f8913ae875edb59fa74a1f4efee4fc8",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9847edf-15d3-ad88-27f4-af4ef5610471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightInv_removeZero (p : FormalMultilinearSeries 𝕜 E F) (i : E ≃L[𝕜] F) (x : E) :
    p.removeZero.rightInv i x = p.rightInv i x := by
  ext1 n
  induction' n using Nat.strongRec' with n IH
  match n with
  | 0 => simp only [rightInv_coeff_zero]
  | 1 => simp only [rightInv_coeff_one]
  | n + 2 =>
    simp only [rightInv, neg_inj]
    rw [removeZero_comp_of_pos _ _ (add_pos_of_nonneg_of_pos n.zero_le zero_lt_two)]
    congr (config := { closePost := false }) 2 with k
    by_cases hk : k < n + 2 <;> simp [hk, IH]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c64d69d3cc3617cbc299981ad781813f657778d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
