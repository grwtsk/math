# li.two_approx_weak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dc58a07-ce18-e5ee-a097-30f0abe8b059",
  "kind": "theorem",
  "lexical_name": "li.two_approx_weak",
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
  "slug": "li-two-approx-weak--a0e6ac71d2c9fa42bddda9f6",
  "source": {
    "blob": "8502608bcd3e9e88bb6a2a9e6ddc0a6b05e8d05c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 241,
    "path": "GRWTSK/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0e6ac71d2c9fa42bddda9f6ba9016680cc03ebb30aec4a11542b3217a29f765",
  "verification": {
    "reference": "docs/verification/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dc58a07-ce18-e5ee-a097-30f0abe8b059`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li.two_approx_weak : li 2 ∈ Set.Icc 1.039 1.06 := by
  rw [li_eq_Li2Bounds_li]
  exact Li2Bounds.li_two_approx_weak_proof

/-- The symmetric form equals the principal value li(2).
This connects the absolutely convergent symmetric integral
∫₀¹ g(t) dt to the principal value definition of li(2). -/
@[blueprint
  "li2-symmetric-eq"
  (title := "Symmetric form equals principal value")
  (statement := /--
    $\int_0^1 \left(\frac{1}{\log(1+t)}
    + \frac{1}{\log(1-t)}\right) dt = \mathrm{li}(2)$ -/)
  (latexEnv := "sublemma")
  (discussion := 764)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8502608bcd3e9e88bb6a2a9e6ddc0a6b05e8d05c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
