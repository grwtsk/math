# conductorThreeVaughanRightInterval_eq_factorized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2e1f1e2-a6a1-ee6e-c29e-2759c52399cd",
  "kind": "theorem",
  "lexical_name": "conductorThreeVaughanRightInterval_eq_factorized",
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
  "slug": "conductorthreevaughanrightinterval-eq-factorized--1ae60a6255e5ecca20a148be",
  "source": {
    "blob": "8482ffe7663fa2cc0e6bdd8498ff64234a23b704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 197,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant53fba52a5af26070622944829cf60cc171a4f80378bc600b9e8472a46b0e3e77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ae60a6255e5ecca20a148be0a2fe264a7882c8e989afae05736598d758138f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant53fba52a5af26070622944829cf60cc171a4f80378bc600b9e8472a46b0e3e77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2e1f1e2-a6a1-ee6e-c29e-2759c52399cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeVaughanRightInterval_eq_factorized
    {V a b : ℕ} (hab : a ≤ b) :
    conductorThreeVaughanRightInterval V a b =
      ∑ d ∈ Finset.Ioc 0 b,
        conductorThreeTwistedMoebiusBelow V d *
          conductorThreeCharacterIntervalSum (a / d) (b / d) := by
  have hinter : conductorThreeVaughanRightInterval V a b =
      conductorThreeVaughanRightPrefix V b -
        conductorThreeVaughanRightPrefix V a := by
    rw [conductorThreeVaughanRightInterval,
      conductorThreeVaughanRightPrefix,
      conductorThreeVaughanRightPrefix]
    have hfinset : Finset.Ioc a b =
        Finset.Ioc 0 b \ Finset.Ioc 0 a := by
      ext n
      simp only [Finset.mem_Ioc, Finset.mem_sdiff]
      omega
    rw [hfinset]
    apply Finset.sum_sdiff_eq_sub
    intro n hn
    simp only [Finset.mem_Ioc] at hn ⊢
    omega
  rw [hinter, conductorThreeVaughanRightPrefix_eq_factorized,
    conductorThreeVaughanRightPrefix_eq_factorized,
    factorizedPrefix_extend hab, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  rw [conductorThreeCharacterIntervalSum_eq]
  · ring
  · exact Nat.div_le_div_right hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant53fba52a5af26070622944829cf60cc171a4f80378bc600b9e8472a46b0e3e77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant53fba52a5af26070622944829cf60cc171a4f80378bc600b9e8472a46b0e3e77.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8482ffe7663fa2cc0e6bdd8498ff64234a23b704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
