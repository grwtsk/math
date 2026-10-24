# comapDomain.addMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b932d082aeb2f3446167bd849ca9d67c878fa1d317e912f4e40fe37530a1560e",
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
  "slug": "comapdomain-addmonoidhom--0f9b41cd1d1dbdaf440185e2",
  "source": {
    "blob": "f08e2dca632d9f450abe593e0ad8fc6095c40ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 609,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f9b41cd1d1dbdaf440185e2565352a0a6037685601aefa36fbfe0b218fc8ec5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b932d082aeb2f3446167bd849ca9d67c878fa1d317e912f4e40fe37530a1560e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–617.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f08e2dca632d9f450abe593e0ad8fc6095c40ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
