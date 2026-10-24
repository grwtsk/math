# conductorThreeVaughanRightInterval_eq_factorized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b1ebaecf537ca14ee69303cd6a7d01b064a878",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58317e5e-8359-7c10-a9bd-8c7a093fa58c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa27f843-c160-3de8-4cc9-5b1f59ccf665",
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
  "slug": "conductorthreevaughanrightinterval-eq-factorized--996f6ac614e0b3e6f1310703",
  "source": {
    "blob": "d7b1ebaecf537ca14ee69303cd6a7d01b064a878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 189,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:996f6ac614e0b3e6f1310703a898ecce4baa2a508ae6f1d80fa52db04c5f1e27",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa27f843-c160-3de8-4cc9-5b1f59ccf665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–219.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant571f5c8f6b4ff5f8956a00bed694c8546bb683a527fda86967a75fdb8fc0aecb.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b1ebaecf537ca14ee69303cd6a7d01b064a878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
