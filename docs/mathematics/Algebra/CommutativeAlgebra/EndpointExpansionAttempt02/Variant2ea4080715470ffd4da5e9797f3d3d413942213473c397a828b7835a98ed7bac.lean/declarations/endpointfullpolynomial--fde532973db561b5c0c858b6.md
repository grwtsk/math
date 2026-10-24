# endpointFullPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a918fb671ba474bfed87f2a1363711955fb0c95cf13907aa697e5b7cb60dd54",
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
  "slug": "endpointfullpolynomial--fde532973db561b5c0c858b6",
  "source": {
    "blob": "1c76a43894e384e66424c6fce2fbdeb7562a6206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 17,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EndpointExpansionAttempt02/Variant2ea4080715470ffd4da5e9797f3d3d413942213473c397a828b7835a98ed7bac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fde532973db561b5c0c858b6b5b50901179397d05b1f12b7743aae67fc22d303",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EndpointExpansionAttempt02/Variant2ea4080715470ffd4da5e9797f3d3d413942213473c397a828b7835a98ed7bac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a918fb671ba474bfed87f2a1363711955fb0c95cf13907aa697e5b7cb60dd54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–27.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EndpointExpansionAttempt02/Variant2ea4080715470ffd4da5e9797f3d3d413942213473c397a828b7835a98ed7bac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EndpointExpansionAttempt02/Variant2ea4080715470ffd4da5e9797f3d3d413942213473c397a828b7835a98ed7bac.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c76a43894e384e66424c6fce2fbdeb7562a6206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
