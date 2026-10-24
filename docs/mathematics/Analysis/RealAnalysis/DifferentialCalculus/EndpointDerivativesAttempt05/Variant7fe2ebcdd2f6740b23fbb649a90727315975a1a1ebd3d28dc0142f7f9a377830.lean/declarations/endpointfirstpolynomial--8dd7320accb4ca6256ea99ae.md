# endpointFirstPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0c08c775bafd350b61a0155f08d3f7f8bc3bbbdec98d9481f035009756ca5f6",
  "kind": "def",
  "lexical_name": "endpointFirstPolynomial",
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
  "slug": "endpointfirstpolynomial--8dd7320accb4ca6256ea99ae",
  "source": {
    "blob": "8c5d0ade425c8cb2f1a6c4f23cc676c21e79ab83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dd7320accb4ca6256ea99aef244f60c0e5d2db6fec25e9e416421254a5d579b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0c08c775bafd350b61a0155f08d3f7f8bc3bbbdec98d9481f035009756ca5f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointFirstPolynomial (a y : ℝ) : ℝ :=
  (6144/1:ℝ)*y^4 +
  (-512/5:ℝ)*y^6 +
  (8/35:ℝ)*y^8 +
  (-24576/1:ℝ)*a^1*y^5 +
  (2048/7:ℝ)*a^1*y^7 +
  (-32/63:ℝ)*a^1*y^9 +
  (38912/1:ℝ)*a^2*y^6 +
  (-2432/7:ℝ)*a^2*y^8 +
  (152/315:ℝ)*a^2*y^10 +
  (-227328/7:ℝ)*a^3*y^7 +
  (4736/21:ℝ)*a^3*y^9 +
  (-296/1155:ℝ)*a^3*y^11 +
  (110976/7:ℝ)*a^4*y^8 +
  (-9248/105:ℝ)*a^4*y^10 +
  (289/3465:ℝ)*a^4*y^12 +
  (-14080/3:ℝ)*a^5*y^9 +
  (64/3:ℝ)*a^5*y^11 +
  (-2/117:ℝ)*a^5*y^13 +
  (832/1:ℝ)*a^6*y^10 +
  (-104/33:ℝ)*a^6*y^12 +
  (1/462:ℝ)*a^6*y^14 +
  (-896/11:ℝ)*a^7*y^11 +
  (112/429:ℝ)*a^7*y^13 +
  (-1/6435:ℝ)*a^7*y^15 +
  (112/33:ℝ)*a^8*y^12 +
  (-4/429:ℝ)*a^8*y^14 +
  (1/205920:ℝ)*a^8*y^16

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c5d0ade425c8cb2f1a6c4f23cc676c21e79ab83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
