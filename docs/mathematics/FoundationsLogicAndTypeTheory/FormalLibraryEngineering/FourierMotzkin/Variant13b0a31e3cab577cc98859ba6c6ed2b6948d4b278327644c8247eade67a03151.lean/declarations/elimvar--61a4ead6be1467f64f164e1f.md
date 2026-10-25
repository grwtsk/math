# elimVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5507fb5bb1fc4a6f481dd729e466a9e22e9c24048faadab0738ad733285ef525",
  "kind": "def",
  "lexical_name": "elimVar",
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
  "slug": "elimvar--61a4ead6be1467f64f164e1f",
  "source": {
    "blob": "f4fe808c4c6ada79cabb2e085c2a7df8a8afb5a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61a4ead6be1467f64f164e1f4de3aec99826f90c85c06f0d2b657ef2183dfea1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5507fb5bb1fc4a6f481dd729e466a9e22e9c24048faadab0738ad733285ef525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elimVar (c1 c2 : Comp) (a : ℕ) : Option (ℕ × ℕ) :=
  let v1 := c1.coeffOf a
  let v2 := c2.coeffOf a
  if v1 * v2 < 0 then
    let vlcm := Nat.lcm v1.natAbs v2.natAbs
    some ⟨vlcm / v1.natAbs, vlcm / v2.natAbs⟩
  else none

/--
`pelimVar p1 p2` calls `elimVar` on the `Comp` components of `p1` and `p2`.
If this returns `v1` and `v2`, it creates a new `PComp` equal to `v1*p1 + v2*p2`,
and tracks this in the `CompSource`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4fe808c4c6ada79cabb2e085c2a7df8a8afb5a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
