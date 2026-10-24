# mobius_abel_commuted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e5478b884c6c54c4fa9fe555b47d28ba95530aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29503e62-27c1-f225-b44d-8960bd09ee8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a701a91e-7493-8056-e84b-b21bef90ca32",
  "kind": "theorem",
  "lexical_name": "mobius_abel_commuted",
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
  "slug": "mobius-abel-commuted--11f9df37fea54031358f922d",
  "source": {
    "blob": "8e5478b884c6c54c4fa9fe555b47d28ba95530aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f9df37fea54031358f922d3feeff6e539ed621d2ac4934109304018d09abda",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a701a91e-7493-8056-e84b-b21bef90ca32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_abel_commuted
    {a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b)
    (Phi : ℝ → ℝ)
    (hPhiDiff :
      ∀ x ∈ Icc a b, DifferentiableAt ℝ Phi x)
    (hPhiInt :
      IntegrableOn (deriv Phi) (Icc a b)) :
    (∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
      realMoebius d * Phi d) =
      Phi b * mertens b -
        Phi a * mertens a -
        ∫ x in Ioc a b,
          mertens x * deriv Phi x := by
  have h :=
    mobius_abel ha hab Phi hPhiDiff hPhiInt
  calc
    (∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
      realMoebius d * Phi d) =
        ∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
          Phi d * realMoebius d := by
      apply Finset.sum_congr rfl
      intro d hd
      ring
    _ = _ := by
      rw [h]
      congr 1
      apply integral_congr_ae
      filter_upwards [] with x
      ring

/-- The exact source window for the large-divisor Abel transport. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5478b884c6c54c4fa9fe555b47d28ba95530aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
