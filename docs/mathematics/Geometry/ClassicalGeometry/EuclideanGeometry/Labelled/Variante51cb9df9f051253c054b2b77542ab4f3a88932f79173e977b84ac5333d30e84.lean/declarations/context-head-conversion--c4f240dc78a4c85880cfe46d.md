# context_head_conversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a82d566-cce8-1d88-09ab-799117e0a1d8",
  "kind": "theorem",
  "lexical_name": "context_head_conversion",
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
  "slug": "context-head-conversion--c4f240dc78a4c85880cfe46d",
  "source": {
    "blob": "0d0549c047940f4f2a4f84c5df3e53c54f8cf0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 718,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4f240dc78a4c85880cfe46d12c4564540848318577c8b5df2d051cba4c43f6a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a82d566-cce8-1d88-09ab-799117e0a1d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem context_head_conversion {A A' b B : Expr S} {s t : S}
    (hb : HasType P (A :: Γ) b B) (hA : HasType P Γ A (.sort s))
    (hA' : HasType P Γ A' (.sort t)) (hc : Converts A A') :
    HasType P (A' :: Γ) b B := by
  have hσ : TypedSubstitution P (A :: Γ) (A' :: Γ) Expr.var := by
    intro n D hn
    rw [Expr.subst_var]
    cases hn with
    | zero =>
        exact .conversion (.var hA') (.weaken hA hA')
          (.symm _ _ (hc.rename Nat.succ))
    | succ _ hn => exact .weaken (lookup hA.valid hn) hA'
  simpa only [Expr.subst_var] using hb.subst (.cons hA'.valid hA') _ hσ

end HasType

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0549c047940f4f2a4f84c5df3e53c54f8cf0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
