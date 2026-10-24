# integrable_sinc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdf2c586-c6ca-d347-0feb-062e91cafebb",
  "kind": "lemma",
  "lexical_name": "integrable_sinc",
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
  "slug": "integrable-sinc--732a388f2a24baf61ce36004",
  "source": {
    "blob": "19a421b63d2c4641772b39c8ba2fdb65bcdab732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:732a388f2a24baf61ce360042607a0cfcf43c75267acea7f41a31c1915c68424",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdf2c586-c6ca-d347-0feb-062e91cafebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_sinc {μ : Measure ℝ} [IsFiniteMeasure μ] :
    Integrable sinc μ := by
  refine Integrable.mono' (g := fun _ ↦ 1) (by fun_prop) (by fun_prop) <| ae_of_all _ fun x ↦ ?_
  rw [Real.norm_eq_abs]
  exact abs_sinc_le_one x

end Real

open Real

@[fun_prop, measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19a421b63d2c4641772b39c8ba2fdb65bcdab732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
