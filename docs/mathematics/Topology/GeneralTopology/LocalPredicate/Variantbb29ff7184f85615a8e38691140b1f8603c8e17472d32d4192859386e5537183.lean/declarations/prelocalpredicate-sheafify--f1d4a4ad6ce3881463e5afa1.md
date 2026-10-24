# PrelocalPredicate.sheafify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08026560cc9f4b959eeda214f1ae536caa3a06b6bbf05280dd437213a972c399",
  "kind": "def",
  "lexical_name": "PrelocalPredicate.sheafify",
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
  "slug": "prelocalpredicate-sheafify--f1d4a4ad6ce3881463e5afa1",
  "source": {
    "blob": "243541d6420c86b4346c81579a8f7eb0607c1cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1d4a4ad6ce3881463e5afa1f46a9367cc2bdc30f9b689e7c0b3604513f6abc7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08026560cc9f4b959eeda214f1ae536caa3a06b6bbf05280dd437213a972c399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PrelocalPredicate.sheafify {T : X → Type*} (P : PrelocalPredicate T) : LocalPredicate T where
  pred {U} f := ∀ x : U, ∃ (V : Opens X) (_ : x.1 ∈ V) (i : V ⟶ U), P.pred fun x : V ↦ f (i x : U)
  res {V U} i f w x := by
    specialize w (i x)
    rcases w with ⟨V', m', i', p⟩
    exact ⟨V ⊓ V', ⟨x.2, m'⟩, V.infLELeft _, P.res (V.infLERight V') _ p⟩
  locality {U} f w x := by
    specialize w x
    rcases w with ⟨V, m, i, p⟩
    specialize p ⟨x.1, m⟩
    rcases p with ⟨V', m', i', p'⟩
    exact ⟨V', m', i' ≫ i, p'⟩

namespace PrelocalPredicate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243541d6420c86b4346c81579a8f7eb0607c1cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
