# associatesMulEquivIsPrincipal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:506fdd74b924ad7ba32014b6048c8c9034351fec5e280601a2a0b0334ff30957",
  "kind": "def",
  "lexical_name": "associatesMulEquivIsPrincipal",
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
  "slug": "associatesmulequivisprincipal--1b48eb0cf6cbaf6b5d68f9dd",
  "source": {
    "blob": "29fd870dbb2e3ccae6de78f8173f498db6a7375e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 113,
    "path": "GRWTSK/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b48eb0cf6cbaf6b5d68f9dd258dd6a854e7194b6153420fe7b3849578ca8c8b",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:506fdd74b924ad7ba32014b6048c8c9034351fec5e280601a2a0b0334ff30957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def associatesMulEquivIsPrincipal :
    Associates R ≃* isPrincipalSubmonoid R where
  __ := associatesEquivIsPrincipal R
  map_mul' _ _ := by
    rw [Subtype.ext_iff]
    -- This `erw` is needed to see through `{I // IsPrincipal I} = ↑(isPrincipalSubmonoid R)`:
    -- we can redefine `associatesEquivIsPrincipal` to get rid of this `erw` but then we'd need
    -- to add one in `associatesNonZeroDivisorsEquivIsPrincipal`.
    erw [associatesEquivIsPrincipal_mul]
    rfl

variable (R) in
/-- A version of `Ideal.associatesEquivIsPrincipal` for non-zero-divisors generators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fd870dbb2e3ccae6de78f8173f498db6a7375e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
