# Semigroup.isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a586b8e17755193081f70247ed3483e18ac777f8754734c6315acbe469165332",
  "kind": "instance",
  "lexical_name": "Semigroup.isScalarTower",
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
  "slug": "semigroup-isscalartower--f10e94a1082fb9c25be17591",
  "source": {
    "blob": "8423ea7068ff282e60c77c5fd1acfc86bea0b348",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 228,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant06c38ecb64d7f24301992ab16e50f5d816ae5334d40c61a4139a2e1c19129af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f10e94a1082fb9c25be1759199c55a6f77732f11e84f2d5fa1d6751c538ee849",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant06c38ecb64d7f24301992ab16e50f5d816ae5334d40c61a4139a2e1c19129af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a586b8e17755193081f70247ed3483e18ac777f8754734c6315acbe469165332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Semigroup.isScalarTower [Semigroup α] : IsScalarTower α α α := ⟨mul_assoc⟩

/-- An instance of `SMulDistribClass G R S` states that the multiplicative
action of `G` on `S` is determined by the multiplicative actions of `G` on `R`
and `R` on `S`.

This is similar to `IsScalarTower` except that the action of `G` distributes
over the action of `R` on `S`.

E.g. if `M/L/K` is a tower of galois extensions then `SMulDistribClass Gal(M/K) L M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant06c38ecb64d7f24301992ab16e50f5d816ae5334d40c61a4139a2e1c19129af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant06c38ecb64d7f24301992ab16e50f5d816ae5334d40c61a4139a2e1c19129af2.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8423ea7068ff282e60c77c5fd1acfc86bea0b348` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
