# equivNatAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b891e096a9444caa2ead9ba62526a93ef708c7a66e5aac727645c305feb2d10",
  "kind": "def",
  "lexical_name": "equivNatAlgHom",
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
  "slug": "equivnatalghom--447b42bee149e4c60a551cc0",
  "source": {
    "blob": "18563e48b3ac84475342e08a679b4e91d3da2982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 443,
    "path": "GRWTSK/Algebra/Hom/Variant82c775b34c6776f62b90ae244d7adb65c7912768e70b696d261a77689288c362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:447b42bee149e4c60a551cc0796a335df2bb418bb316039563ebff2bb5493382",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variant82c775b34c6776f62b90ae244d7adb65c7912768e70b696d261a77689288c362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b891e096a9444caa2ead9ba62526a93ef708c7a66e5aac727645c305feb2d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivNatAlgHom [Semiring R] [Semiring S] : (R →+* S) ≃ (R →ₐ[ℕ] S) where
  toFun := RingHom.toNatAlgHom
  invFun := AlgHom.toRingHom

/-- Reinterpret a `RingHom` as a `ℤ`-algebra homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variant82c775b34c6776f62b90ae244d7adb65c7912768e70b696d261a77689288c362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variant82c775b34c6776f62b90ae244d7adb65c7912768e70b696d261a77689288c362.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18563e48b3ac84475342e08a679b4e91d3da2982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
