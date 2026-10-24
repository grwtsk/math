# li_eq_Li2Bounds_li

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1974cb52-d99f-c246-1f55-ff9bff8b9121",
  "kind": "theorem",
  "lexical_name": "li_eq_Li2Bounds_li",
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
  "slug": "li-eq-li2bounds-li--e1507a9e9e407194f6bf7ad2",
  "source": {
    "blob": "fe02d1f002208c3e8b4a1a6a13f9f67af9626974",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 229,
    "path": "GRWTSK/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1507a9e9e407194f6bf7ad2f449b048a7d02d410e9dfbe326953c47b9ec72f2",
  "verification": {
    "reference": "docs/verification/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1974cb52-d99f-c246-1f55-ff9bff8b9121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li_eq_Li2Bounds_li (x : ℝ) : li x = Li2Bounds.li x := rfl

/-- Weak bounds on li(2) via symmetric form integration.
The tighter bounds in li.two_approx require more precise
numerical integration.
Proved via LeanCert numerical integration
in Li2Bounds.lean. -/
@[blueprint
  "li2-bounds-weak"
  (title := "Weak bounds on li(2)")
  (statement := /-- $1.039 \leq \li(2) \leq 1.06$. -/)
  (latexEnv := "sublemma")
  (discussion := 759)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe02d1f002208c3e8b4a1a6a13f9f67af9626974` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
