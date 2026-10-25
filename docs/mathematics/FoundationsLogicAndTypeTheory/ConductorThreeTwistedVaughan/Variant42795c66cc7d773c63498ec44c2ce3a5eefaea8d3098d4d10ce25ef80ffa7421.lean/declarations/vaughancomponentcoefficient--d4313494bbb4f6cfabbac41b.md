# vaughanComponentCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75ca4bea041db86d6c75d807a8ec0a38b50e68dd08b7212c2bd6c86a049a1b16",
  "kind": "def",
  "lexical_name": "vaughanComponentCoefficient",
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
  "slug": "vaughancomponentcoefficient--d4313494bbb4f6cfabbac41b",
  "source": {
    "blob": "0eaf9778db5361fb950359f7330404bcca452a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 590,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4313494bbb4f6cfabbac41be56783f5318aa553b7a5fecb9a2b5e4de48b0df5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75ca4bea041db86d6c75d807a8ec0a38b50e68dd08b7212c2bd6c86a049a1b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vaughanComponentCoefficient (N : ℕ)
    (a : VaughanComponentAtom N) : ℂ :=
  let U := vaughanFourthRootCutoff N
  let chi : ℝ := conductorThreeIntegerValue a.1
  match a.2.1 with
  | 0 => (chi * vaughanTypeZeroScalar U a.1 : ℝ)
  | 1 => (chi * vaughanTypeI1Scalar U U a.1 : ℝ)
  | 2 => (chi * vaughanTypeI2Scalar U a.1 : ℝ)
  | _ => (chi * vaughanTypeIIScalar U U a.1 : ℝ)

/-- Finite, estimate-free Vaughan atomization.  The fields contain only the
fixed cutoff, finite atoms, arithmetic entry indices, tags, coefficients, and
the exact fiberwise collapse theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaf9778db5361fb950359f7330404bcca452a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
