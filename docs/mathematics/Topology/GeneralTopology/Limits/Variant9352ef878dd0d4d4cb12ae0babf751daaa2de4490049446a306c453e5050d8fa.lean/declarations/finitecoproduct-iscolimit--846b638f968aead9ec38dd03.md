# finiteCoproduct.isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7bf66e66a557410625c227c2c4b14767fd46090e9bfaa6f8514c42abcc5c03d",
  "kind": "def",
  "lexical_name": "finiteCoproduct.isColimit",
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
  "slug": "finitecoproduct-iscolimit--846b638f968aead9ec38dd03",
  "source": {
    "blob": "9a50c398075b2a6096b215eb1e649d9fe1166a13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:846b638f968aead9ec38dd036e59783a2a49fd1b8da10b865c377bd5b197d782",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7bf66e66a557410625c227c2c4b14767fd46090e9bfaa6f8514c42abcc5c03d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteCoproduct.isColimit : Limits.IsColimit (finiteCoproduct.cofan X) :=
  Cofan.IsColimit.mk _
    (fun s ↦ desc _ fun a ↦ s.inj a)
    (fun _ _ ↦ ι_desc _ _ _)
    fun _ _ hm ↦ finiteCoproduct.hom_ext _ _ _ fun a ↦
      (ConcreteCategory.hom_ext _ _ fun t ↦ ConcreteCategory.congr_hom (hm a) t)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a50c398075b2a6096b215eb1e649d9fe1166a13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
