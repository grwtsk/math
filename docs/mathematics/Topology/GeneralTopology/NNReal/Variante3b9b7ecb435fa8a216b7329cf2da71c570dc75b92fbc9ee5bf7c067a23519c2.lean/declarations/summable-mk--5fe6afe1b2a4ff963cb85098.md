# summable_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c41aa69e-6147-dcaf-ad62-34333b4caa07",
  "kind": "theorem",
  "lexical_name": "summable_mk",
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
  "slug": "summable-mk--5fe6afe1b2a4ff963cb85098",
  "source": {
    "blob": "9b64fe4009390777ea7ec931c60e5f360a682d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe6afe1b2a4ff963cb85098a9b873e7b01d97f1da17d43b8aa768a4e839f255",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c41aa69e-6147-dcaf-ad62-34333b4caa07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_mk {f : α → ℝ} (hf : ∀ n, 0 ≤ f n) :
    (@Summable ℝ≥0 _ _ _ fun n => ⟨f n, hf n⟩) ↔ Summable f :=
  Iff.symm <| summable_coe (f := fun x => ⟨f x, hf x⟩)
#align nnreal.summable_coe_of_nonneg NNReal.summable_mk

open Classical

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b64fe4009390777ea7ec931c60e5f360a682d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
