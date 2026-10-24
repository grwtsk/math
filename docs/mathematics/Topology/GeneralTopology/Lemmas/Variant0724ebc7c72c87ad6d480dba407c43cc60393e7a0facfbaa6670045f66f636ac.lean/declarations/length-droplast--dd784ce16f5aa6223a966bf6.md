# length_dropLast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac29c6f6-2f74-e727-ce3f-6553b1268c88",
  "kind": "theorem",
  "lexical_name": "length_dropLast",
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
  "slug": "length-droplast--dd784ce16f5aa6223a966bf6",
  "source": {
    "blob": "519a54b75079a3acb036a212f7303f8d497ecba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3150,
    "line": 3147,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd784ce16f5aa6223a966bf65af261b4eb9a6970be70e5164a9f9be337293ff5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac29c6f6-2f74-e727-ce3f-6553b1268c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3147–3150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem length_dropLast : ∀ {xs : List α}, xs.dropLast.length = xs.length - 1
  | [] => rfl
  | x::xs => by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean#L3147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519a54b75079a3acb036a212f7303f8d497ecba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
