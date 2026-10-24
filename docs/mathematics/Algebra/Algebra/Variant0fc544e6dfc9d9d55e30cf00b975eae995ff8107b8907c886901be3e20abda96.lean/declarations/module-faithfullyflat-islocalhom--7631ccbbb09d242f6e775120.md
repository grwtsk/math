# Module.FaithfullyFlat.isLocalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ac5c8ef43018d3bb4573286f1554439d1538ae45578084c457f4aab2a153fb0",
  "kind": "instance",
  "lexical_name": "Module.FaithfullyFlat.isLocalHom",
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
  "slug": "module-faithfullyflat-islocalhom--7631ccbbb09d242f6e775120",
  "source": {
    "blob": "dfbe05a9165f834e092363166cc23795b5b747b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 163,
    "path": "GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7631ccbbb09d242f6e77512006ca241f3d28e91777bc9fd4673248a2cccf350f",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ac5c8ef43018d3bb4573286f1554439d1538ae45578084c457f4aab2a153fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Module.FaithfullyFlat.isLocalHom : IsLocalHom (algebraMap A B) :=
  IsLocalHom.of_comap_surjective (algebraMap A B) PrimeSpectrum.comap_surjective_of_faithfullyFlat

/-- Let `B` be a faithfully flat `A`-algebra, then `A` is a local ring if `B` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfbe05a9165f834e092363166cc23795b5b747b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
