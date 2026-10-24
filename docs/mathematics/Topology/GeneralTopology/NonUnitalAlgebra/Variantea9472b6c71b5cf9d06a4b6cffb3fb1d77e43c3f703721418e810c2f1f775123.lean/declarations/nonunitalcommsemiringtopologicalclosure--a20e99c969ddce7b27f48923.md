# nonUnitalCommSemiringTopologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:340420473e18a8b65b0dbd9d4cd98f5f5a0c5c7c3ecc6353838f1fb3c8db147b",
  "kind": "abbrev",
  "lexical_name": "nonUnitalCommSemiringTopologicalClosure",
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
  "slug": "nonunitalcommsemiringtopologicalclosure--a20e99c969ddce7b27f48923",
  "source": {
    "blob": "d4b379c7d98ee09a7b3e867dd18591fe9eb2cadd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a20e99c969ddce7b27f4892374bb61eae9147103eb72a4035ed302aab25d9f43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:340420473e18a8b65b0dbd9d4cd98f5f5a0c5c7c3ecc6353838f1fb3c8db147b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev nonUnitalCommSemiringTopologicalClosure [T2Space A] (s : NonUnitalSubalgebra R A)
    (hs : ∀ x y : s, x * y = y * x) : NonUnitalCommSemiring s.topologicalClosure :=
  s.toNonUnitalSubsemiring.nonUnitalCommSemiringTopologicalClosure hs

end Semiring

section Ring

variable {R A : Type*} [CommRing R] [TopologicalSpace A]
variable [NonUnitalRing A] [Module R A] [IsTopologicalRing A]
variable [ContinuousConstSMul R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b379c7d98ee09a7b3e867dd18591fe9eb2cadd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
