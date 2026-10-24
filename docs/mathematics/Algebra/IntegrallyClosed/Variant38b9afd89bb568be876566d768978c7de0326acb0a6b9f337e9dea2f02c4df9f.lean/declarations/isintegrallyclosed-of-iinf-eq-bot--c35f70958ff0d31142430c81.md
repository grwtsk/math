# IsIntegrallyClosed.of_iInf_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c22c135b-0259-898b-b149-4eb3e0a462df",
  "kind": "theorem",
  "lexical_name": "IsIntegrallyClosed.of_iInf_eq_bot",
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
  "slug": "isintegrallyclosed-of-iinf-eq-bot--c35f70958ff0d31142430c81",
  "source": {
    "blob": "ebafec634cb1551ca4640b8f1c9425bedb3aae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 46,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c35f70958ff0d31142430c81f099014ac9562d529a832db12102c776bb86a34b",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c22c135b-0259-898b-b149-4eb3e0a462df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegrallyClosed.of_iInf_eq_bot {ι : Type*} (S : ι → Subalgebra R K)
    (h : ∀ i : ι, IsIntegrallyClosed (S i)) (hs : ⨅ i : ι, S i = ⊥) : IsIntegrallyClosed R :=
  have f : (⊥ : Subalgebra R K) ≃ₐ[R] R :=
    Algebra.botEquivOfInjective (FaithfulSMul.algebraMap_injective R K)
  (IsIntegrallyClosed.iInf S h).of_equiv (hs ▸ f).toRingEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebafec634cb1551ca4640b8f1c9425bedb3aae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
