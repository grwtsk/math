# radius_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53168d13-75b8-db85-42a4-c3a1990a07e9",
  "kind": "lemma",
  "lexical_name": "radius_nonneg",
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
  "slug": "radius-nonneg--9122d70c77dbd01992d91eb2",
  "source": {
    "blob": "f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9122d70c77dbd01992d91eb211d52da6d2f7fd0a3d24916f97c990560d22f0ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53168d13-75b8-db85-42a4-c3a1990a07e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma radius_nonneg {A : Data} {N : ℕ} {s : Gaussian} (hc : A.check N s=true) :
    0 ≤ A.radius N s := by
  obtain ⟨hN,hlen,hpowers⟩ := (A.check_iff N s).mp hc
  have hp (k : ℕ) (hk : k ∈ Finset.Icc 1 N) : 0 ≤ (A.item k).radius :=
    (((A.item k).check_iff k s).mp (hpowers k hk)).2.2.1
  exact add_nonneg
    (mul_nonneg (Gaussian.l1_nonneg _) (Finset.sum_nonneg hp))
    (mul_nonneg (Gaussian.l1_nonneg _) (hp N (Finset.mem_Icc.mpr ⟨hN,le_rfl⟩)))

/-- All Gaussian centers and evaluation radii are supplied by the checked list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
