# li_pv_two_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd873677-e1e2-18e0-2703-b812e0109fb4",
  "kind": "theorem",
  "lexical_name": "li_pv_two_bounds",
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
  "slug": "li-pv-two-bounds--d5461d5a8b34ddcaccb58b68",
  "source": {
    "blob": "a70c583ba061275efe406256d68d3e2ac49f3cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5461d5a8b34ddcaccb58b684d3b364b511aea6cf3e6758184a778394160446e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd873677-e1e2-18e0-2703-b812e0109fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li_pv_two_bounds : (1039:ℚ)/1000 ≤ li_pv 2 ∧ li_pv 2 ≤ (106:ℚ)/100 :=
  ⟨li_pv_two_lower, li_pv_two_upper⟩

end Li2Connection

/-!
## Summary

This file establishes the connection between two definitions of li(2):

1. **Principal Value (Tao's definition)**:
   `li_pv(2) = lim_{ε→0⁺} [∫₀^{1-ε} dt/log(t) + ∫_{1+ε}^2 dt/log(t)]`

2. **Symmetric Form (our definition)**:
   `li2 = ∫₀¹ (1/log(1+t) + 1/log(1-t)) dt`

The key theorem `li_pv_two_eq_li2` proves these are equal.

### Remaining Sorries

The sorries are for:
- Integrability of 1/log(1±u) on [ε,1]
- Integrability of g on [0,1]
- Limit theorem (continuity of integral in lower bound)
- The main connection theorem (using the above)

These are all provable using standard Mathlib techniques, but require
careful handling of the logarithm singularities.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a70c583ba061275efe406256d68d3e2ac49f3cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
