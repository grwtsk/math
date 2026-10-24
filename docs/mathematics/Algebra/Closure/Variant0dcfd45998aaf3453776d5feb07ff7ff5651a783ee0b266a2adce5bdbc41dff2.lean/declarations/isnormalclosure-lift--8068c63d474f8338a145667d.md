# IsNormalClosure.lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aab18184aa5a1b21c9ac4fb8f0e483c0010a80f98593005e3dfe8f251e600e42",
  "kind": "def",
  "lexical_name": "IsNormalClosure.lift",
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
  "slug": "isnormalclosure-lift--8068c63d474f8338a145667d",
  "source": {
    "blob": "a8c9add38b9573e5ca038f524bd6e9424a464ba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8068c63d474f8338a145667d92346cba4c4499915011ed49f574200621f09294",
  "verification": {
    "reference": "docs/verification/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aab18184aa5a1b21c9ac4fb8f0e483c0010a80f98593005e3dfe8f251e600e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsNormalClosure.lift [h : IsNormalClosure F K L] {L'} [Field L'] [Algebra F L']
    (splits : ∀ x : K, (minpoly F x).Splits (algebraMap F L')) : L →ₐ[F] L' := by
  have := h.adjoin_rootSet; rw [← gc.l_iSup] at this
  refine Nonempty.some <| nonempty_algHom_of_adjoin_splits
    (fun x hx ↦ ⟨isAlgebraic_iff_isIntegral.mp ((h.normal).isAlgebraic x), ?_⟩) this
  obtain ⟨y, hx⟩ := Set.mem_iUnion.mp hx
  by_cases iy : IsIntegral F y
  · exact splits_of_splits_of_dvd _ (minpoly.ne_zero iy)
      (splits y) (minpoly.dvd F x (mem_rootSet.mp hx).2)
  · simp [minpoly.eq_zero iy] at hx

/-- Normal closures of `K/F` are unique up to F-algebra isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8c9add38b9573e5ca038f524bd6e9424a464ba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
