# continuousAddCharEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce95347a-522a-8d35-0336-6181f2a2ceec",
  "kind": "lemma",
  "lexical_name": "continuousAddCharEquiv_symm_apply",
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
  "slug": "continuousaddcharequiv-symm-apply--8281f77cca6bd35837766f49",
  "source": {
    "blob": "fac75608c46c85f39cea591ad436ba9497d51b80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/AddChar/Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8281f77cca6bd35837766f49e348d3b074c9a98ef3f66bf9bd08ae9c5433a6d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddChar/Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce95347a-522a-8d35-0336-6181f2a2ceec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma continuousAddCharEquiv_symm_apply {r : R} (hr : Tendsto (r ^ ·) atTop (𝓝 0)) :
    (continuousAddCharEquiv p R).symm ⟨r, hr⟩ =
    (addChar_of_value_at_one r hr : AddChar ℤ_[p] R) :=
  rfl

section NormMulClass
variable [NormMulClass R]

variable (p R) in
/-- Equivalence between continuous additive characters `ℤ_[p] → R`, and `r ∈ R` with `‖r‖ < 1`,
for rings with strictly multiplicative norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddChar/Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddChar/Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac75608c46c85f39cea591ad436ba9497d51b80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
