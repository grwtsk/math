# ListαEquivPUnitSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1edfc83249083e4f1937a88ce013d4a1e8a609f9304332be084e8ef3472be3c",
  "kind": "def",
  "lexical_name": "ListαEquivPUnitSum",
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
  "slug": "list-equivpunitsum--912c7cba37fe42d6c7a9686d",
  "source": {
    "blob": "940f86a200b28e080c4da25ed700be713adeda8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:912c7cba37fe42d6c7a9686d48421c350ea61acbc03df64d11b0c3807f1660d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1edfc83249083e4f1937a88ce013d4a1e8a609f9304332be084e8ef3472be3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ListαEquivPUnitSum : Listα γ ≃ PUnit.{v + 1} ⊕ γ where
  toFun c :=
    match c with
    | Listα.nil => Sum.inl PUnit.unit
    | Listα.cons x => Sum.inr x
  invFun := Sum.elim (fun _ ↦ Listα.nil) Listα.cons
  left_inv c :=
    match c with
    | Listα.nil => rfl
    | Listα.cons _ => rfl
  right_inv x :=
    match x with
    | Sum.inl PUnit.unit => rfl
    | Sum.inr _ => rfl

end List

end WType
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variantdb628fbd749e013a3c63c73f2a67f9ca336d398b649da7f19eb70747515303fe.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `940f86a200b28e080c4da25ed700be713adeda8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
