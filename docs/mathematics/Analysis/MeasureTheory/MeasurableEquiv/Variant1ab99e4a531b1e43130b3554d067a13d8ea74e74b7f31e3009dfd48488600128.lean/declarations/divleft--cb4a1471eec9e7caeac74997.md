# divLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cefd343d1bf6d7532047c0edf6b718ef3cde927bd15e982df490116f690e12c4",
  "kind": "def",
  "lexical_name": "divLeft",
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
  "slug": "divleft--cb4a1471eec9e7caeac74997",
  "source": {
    "blob": "569b8be41f36e98dcbbe83cc2edfc932b0dcbe57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 250,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb4a1471eec9e7caeac7499763ecfc66b8a862a001d8b59497ccfd4c6e1f9a85",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cefd343d1bf6d7532047c0edf6b718ef3cde927bd15e982df490116f690e12c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def divLeft [MeasurableMul G] [MeasurableInv G] (g : G) : G ≃ᵐ G where
  toEquiv := Equiv.divLeft g
  measurable_toFun := measurable_id.const_div g
  measurable_invFun := measurable_inv.mul_const g
#align measurable_equiv.div_left MeasurableEquiv.divLeft
#align measurable_equiv.sub_left MeasurableEquiv.subLeft

end MeasurableEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569b8be41f36e98dcbbe83cc2edfc932b0dcbe57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
