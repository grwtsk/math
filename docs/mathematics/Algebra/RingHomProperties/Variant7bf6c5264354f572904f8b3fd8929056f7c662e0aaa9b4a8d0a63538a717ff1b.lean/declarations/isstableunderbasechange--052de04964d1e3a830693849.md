# IsStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00cd85916ba9bef75abafce62cda567f29487525c9eea3c92c5c69284c86513d",
  "kind": "def",
  "lexical_name": "IsStableUnderBaseChange",
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
  "slug": "isstableunderbasechange--052de04964d1e3a830693849",
  "source": {
    "blob": "0a46f3ef581e64c9df52560576ce6eb88a2349de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 139,
    "path": "GRWTSK/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:052de04964d1e3a8306938493fde1443d3c0ac1d2e96e87e08dd7c0806f2942a",
  "verification": {
    "reference": "docs/verification/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00cd85916ba9bef75abafce62cda567f29487525c9eea3c92c5c69284c86513d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsStableUnderBaseChange : Prop :=
  ∀ (R S R' S') [CommRing R] [CommRing S] [CommRing R'] [CommRing S'],
    ∀ [Algebra R S] [Algebra R R'] [Algebra R S'] [Algebra S S'] [Algebra R' S'],
      ∀ [IsScalarTower R S S'] [IsScalarTower R R' S'],
        ∀ [Algebra.IsPushout R S R' S'], P (algebraMap R S) → P (algebraMap R' S')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a46f3ef581e64c9df52560576ce6eb88a2349de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
