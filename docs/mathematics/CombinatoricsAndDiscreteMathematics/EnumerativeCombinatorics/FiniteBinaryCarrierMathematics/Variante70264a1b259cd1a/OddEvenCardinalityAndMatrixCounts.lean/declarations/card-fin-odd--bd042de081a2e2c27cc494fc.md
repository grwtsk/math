# card_fin_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d62f0db8-b14a-a8f8-b89b-e2824b1f5683",
  "kind": "theorem",
  "lexical_name": "card_fin_odd",
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
  "slug": "card-fin-odd--bd042de081a2e2c27cc494fc",
  "source": {
    "blob": "86ff9af2ed87f2a3601cad0d133b677518a01fb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd042de081a2e2c27cc494fc5367cd5964fd13d7ad718fd619b73b97be4e414c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d62f0db8-b14a-a8f8-b89b-e2824b1f5683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem card_fin_odd (n : Nat) :
    ((Finset.univ : Finset (Fin n)).filter (fun i => Odd i.val)).card = n / 2 := by
  classical
  calc
    ((Finset.univ : Finset (Fin n)).filter (fun i => Odd i.val)).card
        = Fintype.card {i : Fin n // Odd i.val} := by
          rw [Fintype.card_of_subtype]
          simp
    _ = Fintype.card {k : Nat // k < n ∧ Odd k} := by
          exact Fintype.card_congr (finOddEquiv n)
    _ = Nat.count (fun k => Odd k) n := by
          exact (Nat.count_eq_card_fintype (fun k => Odd k) n).symm
    _ = n / 2 := count_odd_eq_div_two n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86ff9af2ed87f2a3601cad0d133b677518a01fb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
