# primeIndices_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afa44e8e-0f37-3537-bdaf-8e8d877a2006",
  "kind": "theorem",
  "lexical_name": "primeIndices_mono",
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
  "slug": "primeindices-mono--6cb0df0880d781e8bd6d0cd5",
  "source": {
    "blob": "637d21ca985d650a4a10da5c5b6edf49ee737048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cb0df0880d781e8bd6d0cd5296d2b9a95becc4e2075beee3974c8e9611a809a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa44e8e-0f37-3537-bdaf-8e8d877a2006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeIndices_mono
    {A R : ℝ} (hAR : A ≤ R) :
    primeIndices A ⊆ primeIndices R := by
  intro n hn
  rw [mem_primeIndices_iff] at hn ⊢
  exact
    ⟨hn.1,
      hn.2.trans_le
        (Real.exp_le_exp.mpr (by linarith))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `637d21ca985d650a4a10da5c5b6edf49ee737048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
