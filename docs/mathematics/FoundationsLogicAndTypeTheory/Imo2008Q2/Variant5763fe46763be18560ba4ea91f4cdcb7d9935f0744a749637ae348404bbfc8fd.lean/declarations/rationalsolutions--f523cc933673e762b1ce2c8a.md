# rationalSolutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18358bcd837e1b476d8d3b3eabd90062bafec707d49318afc1aea3b155c3bc7d",
  "kind": "def",
  "lexical_name": "rationalSolutions",
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
  "slug": "rationalsolutions--f523cc933673e762b1ce2c8a",
  "source": {
    "blob": "00885102e38bfc1c1af33a40736f2663ee4bb163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q2/Variant5763fe46763be18560ba4ea91f4cdcb7d9935f0744a749637ae348404bbfc8fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f523cc933673e762b1ce2c8a53c43127480877a61086e18fa143530e84b1ed74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo2008Q2/Variant5763fe46763be18560ba4ea91f4cdcb7d9935f0744a749637ae348404bbfc8fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18358bcd837e1b476d8d3b3eabd90062bafec707d49318afc1aea3b155c3bc7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rationalSolutions :=
  {s : ℚ × ℚ × ℚ | ∃ x y z : ℚ, s = (x, y, z) ∧ x ≠ 1 ∧ y ≠ 1 ∧ z ≠ 1 ∧ x * y * z = 1 ∧
    x ^ 2 / (x - 1) ^ 2 + y ^ 2 / (y - 1) ^ 2 + z ^ 2 / (z - 1) ^ 2 = 1}
#align imo2008_q2.rational_solutions Imo2008Q2.rationalSolutions

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo2008Q2/Variant5763fe46763be18560ba4ea91f4cdcb7d9935f0744a749637ae348404bbfc8fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q2/Variant5763fe46763be18560ba4ea91f4cdcb7d9935f0744a749637ae348404bbfc8fd.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00885102e38bfc1c1af33a40736f2663ee4bb163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
