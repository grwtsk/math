# comapDomain.addMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:943dfc2610712f7a4e36d8ee0192a52a0fb73aae09c822a8dc6e99c89f58ad0e",
  "kind": "def",
  "lexical_name": "comapDomain.addMonoidHom",
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
  "slug": "comapdomain-addmonoidhom--1eb3cb72af29d2ba30088b36",
  "source": {
    "blob": "cb22c7bb0aa43b606848cc0702206a326da41479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 699,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1eb3cb72af29d2ba30088b365fa98e4d98b7692517cf62cb554492d085c6ee77",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:943dfc2610712f7a4e36d8ee0192a52a0fb73aae09c822a8dc6e99c89f58ad0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comapDomain.addMonoidHom (hf : Function.Injective f) : (β →₀ M) →+ α →₀ M where
  toFun x := comapDomain f x hf.injOn
  map_zero' := comapDomain_zero f
  map_add' := comapDomain_add_of_injective hf

end AddZeroClass

variable [AddCommMonoid M] (f : α → β)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb22c7bb0aa43b606848cc0702206a326da41479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
