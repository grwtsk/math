# coxeterWeightIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8381a2829ef557cf7068c891bcf5bda01e8a0d1189c4eb383f2f6df9ee4a9c7",
  "kind": "def",
  "lexical_name": "coxeterWeightIn",
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
  "slug": "coxeterweightin--4497c3cf8dcede8bee29329c",
  "source": {
    "blob": "c4f7e07fe5052bfb1d4e27345a06833fa900fdd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 278,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4497c3cf8dcede8bee29329c80fcb4f3cb895523998f21d11012f386601edb03",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8381a2829ef557cf7068c891bcf5bda01e8a0d1189c4eb383f2f6df9ee4a9c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coxeterWeightIn (S : Type*) [CommRing S] [Algebra S R] [P.IsValuedIn S] (i j : ι) : S :=
  P.pairingIn S i j * P.pairingIn S j i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f7e07fe5052bfb1d4e27345a06833fa900fdd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
