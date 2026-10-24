# endpointSecondPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b017a9e15bf2a4c1d018c1e2e1193646baa446fe032e99ccfa6723b4e099969",
  "kind": "def",
  "lexical_name": "endpointSecondPolynomial",
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
  "slug": "endpointsecondpolynomial--d4182b45de7bc48a5947c6bb",
  "source": {
    "blob": "26080bb68872c1490e4d958886634880f566ca19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4182b45de7bc48a5947c6bb93ff6b87dc6122636a5a18a3eec65bd4d7af1dad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b017a9e15bf2a4c1d018c1e2e1193646baa446fe032e99ccfa6723b4e099969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointSecondPolynomial (a y : ℝ) : ℝ :=
  (24576/1:ℝ)*y^3 +
  (-3072/5:ℝ)*y^5 +
  (64/35:ℝ)*y^7 +
  (-122880/1:ℝ)*a^1*y^4 +
  (2048/1:ℝ)*a^1*y^6 +
  (-32/7:ℝ)*a^1*y^8 +
  (233472/1:ℝ)*a^2*y^5 +
  (-19456/7:ℝ)*a^2*y^7 +
  (304/63:ℝ)*a^2*y^9 +
  (-227328/1:ℝ)*a^3*y^6 +
  (14208/7:ℝ)*a^3*y^8 +
  (-296/105:ℝ)*a^3*y^10 +
  (887808/7:ℝ)*a^4*y^7 +
  (-18496/21:ℝ)*a^4*y^9 +
  (1156/1155:ℝ)*a^4*y^11 +
  (-42240/1:ℝ)*a^5*y^8 +
  (704/3:ℝ)*a^5*y^10 +
  (-2/9:ℝ)*a^5*y^12 +
  (8320/1:ℝ)*a^6*y^9 +
  (-416/11:ℝ)*a^6*y^11 +
  (1/33:ℝ)*a^6*y^13 +
  (-896/1:ℝ)*a^7*y^10 +
  (112/33:ℝ)*a^7*y^12 +
  (-1/429:ℝ)*a^7*y^14 +
  (448/11:ℝ)*a^8*y^11 +
  (-56/429:ℝ)*a^8*y^13 +
  (1/12870:ℝ)*a^8*y^15

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26080bb68872c1490e4d958886634880f566ca19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
