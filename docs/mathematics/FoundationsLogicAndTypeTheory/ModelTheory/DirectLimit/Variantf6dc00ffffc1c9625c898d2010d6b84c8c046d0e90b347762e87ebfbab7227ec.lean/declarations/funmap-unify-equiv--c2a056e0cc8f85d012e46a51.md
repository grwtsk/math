# funMap_unify_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:860484bf-164d-49ff-fce7-a7e24910828b",
  "kind": "theorem",
  "lexical_name": "funMap_unify_equiv",
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
  "slug": "funmap-unify-equiv--c2a056e0cc8f85d012e46a51",
  "source": {
    "blob": "ea5cede3e3a7cb45e1b97c0e887e0220ccf42fd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a056e0cc8f85d012e46a5171cf4d6ae4633872ef5bc31f0b7e74631ac525d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:860484bf-164d-49ff-fce7-a7e24910828b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem funMap_unify_equiv {n : ℕ} (F : L.Functions n) (x : Fin n → Σˣ f) (i j : ι)
    (hi : i ∈ upperBounds (range (Sigma.fst ∘ x))) (hj : j ∈ upperBounds (range (Sigma.fst ∘ x))) :
    Structure.Sigma.mk f i (funMap F (unify f x i hi)) ≈ .mk f j (funMap F (unify f x j hj)) := by
  obtain ⟨k, ik, jk⟩ := directed_of (· ≤ ·) i j
  refine' ⟨k, ik, jk, _⟩
  rw [(f i k ik).map_fun, (f j k jk).map_fun, comp_unify, comp_unify]
#align first_order.language.direct_limit.fun_map_unify_equiv FirstOrder.Language.DirectLimit.funMap_unify_equiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5cede3e3a7cb45e1b97c0e887e0220ccf42fd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
