# isNormalClosure_normalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10ba6802a54a5abb9cf2a11edac480fa4de10823bc362d559a33772f075db6d5",
  "kind": "instance",
  "lexical_name": "isNormalClosure_normalClosure",
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
  "slug": "isnormalclosure-normalclosure--26b80d552e8a8ec4b8e4791c",
  "source": {
    "blob": "a8c9add38b9573e5ca038f524bd6e9424a464ba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 146,
    "path": "GRWTSK/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26b80d552e8a8ec4b8e4791c818b4e67497250568272d8e94951d411cac2b29f",
  "verification": {
    "reference": "docs/verification/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10ba6802a54a5abb9cf2a11edac480fa4de10823bc362d559a33772f075db6d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isNormalClosure_normalClosure [ne : Nonempty (K →ₐ[F] L)] [h : Normal F L] :
    IsNormalClosure F K (normalClosure F K L) := by
  have ⟨φ⟩ := ne
  apply (h.toIsAlgebraic.of_injective φ φ.injective).isNormalClosure_normalClosure
  simp_rw [← minpoly.algHom_eq _ φ.injective]
  exact fun _ ↦ h.splits _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8c9add38b9573e5ca038f524bd6e9424a464ba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
