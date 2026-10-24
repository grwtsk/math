# exact_period_of_hasOrder_and_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87dca7c4-b1d4-efe4-149a-60029a066274",
  "kind": "theorem",
  "lexical_name": "exact_period_of_hasOrder_and_faithful",
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
  "slug": "exact-period-of-hasorder-and-faithful--dd7070b8984ca7082e1ccb19",
  "source": {
    "blob": "b058c5387f9be90c0f771785223f72213a0ee291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 49,
    "path": "GRWTSK/Algebra/ExactPeriod/Variantf0742a67a6b6d960b6bae76863b6806db439ae90321381236f5284554f19d4f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7070b8984ca7082e1ccb192567a8641edecce67e12f5436e058bcd63f40cdb",
  "verification": {
    "reference": "docs/verification/Algebra/ExactPeriod/Variantf0742a67a6b6d960b6bae76863b6806db439ae90321381236f5284554f19d4f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87dca7c4-b1d4-efe4-149a-60029a066274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_period_of_hasOrder_and_faithful
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hOrder : Arithmetic.HasOrder G P n)
    (hFaithful : ActionFaithful A) :
    HasExactPeriod A P n := by
  refine
    ⟨hOrder.1,
      Monodromy.TorsionAction.period_dividing_of_hasOrder A P hOrder,
      ?_⟩
  intro m hmpos hmlt hmperiod
  have hact :
      A.act (Arithmetic.nsmulPoint G m P) =
        A.act (Arithmetic.ECPoint.infinity (E := E)) := by
    rw [A.act_zero]
    ext x
    exact
      (Monodromy.TorsionAction.act_nsmulPoint_apply A P m x).trans
        (hmperiod x)
  exact hOrder.2.2 m hmpos hmlt (hFaithful _ _ hact)

end ExactPeriod
end Research
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ExactPeriod/Variantf0742a67a6b6d960b6bae76863b6806db439ae90321381236f5284554f19d4f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ExactPeriod/Variantf0742a67a6b6d960b6bae76863b6806db439ae90321381236f5284554f19d4f5.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b058c5387f9be90c0f771785223f72213a0ee291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
