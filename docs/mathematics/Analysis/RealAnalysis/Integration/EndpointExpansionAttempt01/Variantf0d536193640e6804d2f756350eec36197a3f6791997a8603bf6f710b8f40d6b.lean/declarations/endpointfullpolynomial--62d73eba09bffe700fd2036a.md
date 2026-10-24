# endpointFullPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d022e8eeb5aaf8466b6c7ff8b82d7c0a7413b19d1555c96218ac68d9c458066",
  "kind": "def",
  "lexical_name": "endpointFullPolynomial",
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
  "slug": "endpointfullpolynomial--62d73eba09bffe700fd2036a",
  "source": {
    "blob": "59963d1ac2d7add3f2b7f0e0ec2fd6726df17fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 17,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndpointExpansionAttempt01/Variantf0d536193640e6804d2f756350eec36197a3f6791997a8603bf6f710b8f40d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62d73eba09bffe700fd2036a2f33ca97c1b0addd82e305a2f29518937c32fc7e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndpointExpansionAttempt01/Variantf0d536193640e6804d2f756350eec36197a3f6791997a8603bf6f710b8f40d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d022e8eeb5aaf8466b6c7ff8b82d7c0a7413b19d1555c96218ac68d9c458066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointFullPolynomial (a y : ℝ) : ℝ :=
  (a^0)*(8/315:ℝ)*y^5*(y^4-576*y^2+48384) +
  (a^1)*(-16/315:ℝ)*y^6*(y^4-720*y^2+80640) +
  (a^2)*(152/3465:ℝ)*y^7*(y^4-880*y^2+126720) +
  (a^3)*(-74/3465:ℝ)*y^8*(y^4-1056*y^2+190080) +
  (a^4)*(289/45045:ℝ)*y^9*(y^4-1248*y^2+274560) +
  (a^5)*(-1/819:ℝ)*y^10*(y^4-1456*y^2+384384) +
  (a^6)*(1/6930:ℝ)*y^11*(y^4-1680*y^2+524160) +
  (a^7)*(-1/102960:ℝ)*y^12*(y^4-1920*y^2+698880) +
  (a^8)*(1/3500640:ℝ)*y^13*(y^4-2176*y^2+913920)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndpointExpansionAttempt01/Variantf0d536193640e6804d2f756350eec36197a3f6791997a8603bf6f710b8f40d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndpointExpansionAttempt01/Variantf0d536193640e6804d2f756350eec36197a3f6791997a8603bf6f710b8f40d6b.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59963d1ac2d7add3f2b7f0e0ec2fd6726df17fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
