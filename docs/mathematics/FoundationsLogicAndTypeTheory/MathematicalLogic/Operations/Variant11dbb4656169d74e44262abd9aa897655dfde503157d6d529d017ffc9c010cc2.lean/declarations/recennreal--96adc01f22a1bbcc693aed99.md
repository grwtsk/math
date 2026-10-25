# recENNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca038d0a4635df8e8aafae88293d651804e614c29df1497a3d1c0a281273890a",
  "kind": "def",
  "lexical_name": "recENNReal",
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
  "slug": "recennreal--96adc01f22a1bbcc693aed99",
  "source": {
    "blob": "39e54edd8eb5601aaf601074fb40b80bc29e434b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 313,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96adc01f22a1bbcc693aed9977ee93da4efeae2ddd6aec01dd8df8eb82058e04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca038d0a4635df8e8aafae88293d651804e614c29df1497a3d1c0a281273890a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recENNReal {motive : EReal → Sort*} (coe : ∀ x : ℝ≥0∞, motive x)
    (neg_coe : ∀ x : ℝ≥0∞, 0 < x → motive (-x)) (x : EReal) : motive x :=
  if hx : 0 ≤ x then coe_toENNReal hx ▸ coe _
  else
    haveI H₁ : 0 < -x := by simpa using hx
    haveI H₂ : x = -(-x).toENNReal := by rw [coe_toENNReal H₁.le, neg_neg]
    H₂ ▸ neg_coe _ <| by positivity

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e54edd8eb5601aaf601074fb40b80bc29e434b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
