# BTreePlan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bad754d83c54c0003b26739a0bd4b77d0af4668902d091322666d93151414612",
  "kind": "def",
  "lexical_name": "BTreePlan",
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
  "slug": "btreeplan--a21e56dbde952eab9a771d43",
  "source": {
    "blob": "26bc0b92709fb260d2d5e1f9a77b7246cc0bdd2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Boundary/Variant902b876a0b5664bedc1714e745b5096257e66367e07b53fa8465cc8b4b03d417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a21e56dbde952eab9a771d43a3a8f2e718f1368a4c4ad2534b107d2412fd011d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Boundary/Variant902b876a0b5664bedc1714e745b5096257e66367e07b53fa8465cc8b4b03d417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bad754d83c54c0003b26739a0bd4b77d0af4668902d091322666d93151414612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BTreePlan
    (K : KernelPresentation.{u})
    (boundary : Finset K.ConstantName)
    (J : K.Judgment) :=
  {plan : TreePlan K J //
    letI := K.constantNameDecidableEq
    plan.constantReferences ⊆ boundary ∪ K.primitiveConstants}

/--
**Proof idea:** Compile structurally, then transport `closed` through exact
constant-reference preservation.

**Validation consequence:** The function cannot manufacture closure for an
arbitrary derivation; its final argument is mandatory.

**Architectural problem:** Restriction must be conditional on original
derivation closure rather than inferred after compilation.
**Important data and indices:** The fixed boundary, `K`, exact root `J`, input
derivation, and closure witness all occur in the type.
**Type-enforced invariant:** No result is constructible through this function
without the `BClosed` argument.
**Layer boundary:** This compiles a local tree only; it does not link declarations.
**Worked example:** The private restricted fixture supplies its explicit proof.
**Used by:** `eval_compB` and later boundary consumers.
**Equality notion:** The stored plan is exact `Comp derivation`; proof fields are
closure evidence rather than plan content.
**Boundary cases:** A false closure predicate makes the function unavailable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Boundary/Variant902b876a0b5664bedc1714e745b5096257e66367e07b53fa8465cc8b4b03d417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Boundary/Variant902b876a0b5664bedc1714e745b5096257e66367e07b53fa8465cc8b4b03d417.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26bc0b92709fb260d2d5e1f9a77b7246cc0bdd2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
