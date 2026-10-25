# appear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e79b1e53833e75b9c580c6b9dfa8f48ad25e773bff4f7fbbe46660d09dc91af0",
  "kind": "constants",
  "lexical_name": "appear",
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
  "slug": "appear--6c40f05dff4ffcab278e031d",
  "source": {
    "blob": "877f6fc1109967cd7962c5a5bfe0ae432812797f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variantf8362dd2b1923fa2046627a8a715902b8fd08e87b5f6f6a406968d74309bedcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c40f05dff4ffcab278e031d3e95d11e2553ef015f1ad89fa25acd5dec45909b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variantf8362dd2b1923fa2046627a8a715902b8fd08e87b5f6f6a406968d74309bedcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `constants` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e79b1e53833e75b9c580c6b9dfa8f48ad25e773bff4f7fbbe46660d09dc91af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
constants appear in closed Mathlib form (`2 / 3`, `5 / 6`, `2 - 1 / cMT`, `3 / 2 - cMT⁻¹ / 2`); the decimal
expansions in the docstrings are not part of the formal statements.

## Layout of the proof development

```
Zeta23/Statement.lean  nontrivial zeros, multiplicity, the counting functions, against Mathlib's riemannZeta
Zeta23/Unconditional.lean, Zeta23/Final.lean, Zeta23/FinalMult.lean      Theorems A, B, C (ζ)
Zeta23/ThmD/           Theorem D (the optimal Montgomery–Taylor window; variational problem in ThmD/Functional.lean; ThmD/Mult.lean)
Zeta23/ThmE/           Theorem E (primitive Dirichlet L-functions); Zeta23/ThmDE/: Theorem D for L(s,χ)
Zeta23/LinAlg/         §3 of the paper: Sylvester inertia, rank–trace inequality (via von Neumann), Cauchy–Schwarz count, Weyl
Zeta23/WeilEF/, Zeta23/ExplicitFormula*   Weil's explicit formula (contour integration, Landau's lemma, zero-sum limits)
Zeta23/RvM/            Riemann–von Mangoldt formula (argument principle, Backlund's bound via Jensen, local zero counts)
Zeta23/GammaFacts/, Zeta23/Analytic/   Γ′/Γ estimates on vertical lines (Stirling) and other analysis
Zeta23/Chebyshev.lean, Zeta23/FromPNTPlus/     Chebyshev–Mertens estimates; files ported (with attribution headers) from PrimeNumberTheoremAnd
Zeta23/MV/             Montgomery–Vaughan generalized Hilbert inequality
Zeta23/PrimeSideA/, PrimeSideB/, Poisson.lean, Taper/   the prime side: traces of the Gram matrix (paper §§4–5)
Zeta23/ZeroSide/, Tail/                the zero side: block structure, tail bounds (paper §§2, 6)
Zeta23/Assembly/, Main.lean            assembly of the certificate (paper §6)
Zeta23/XiPrime/         zeros of ξ′: explicit formula for ξ′/ξ, coefficient system, certificates, headline theorems (XiPrime/Final.lean)
Zeta23/PairCeiling/     the bandwidth-one ceiling: definitions, stability inequality (Stability.lean), near-CUE constants, integer row certificates, the N = 256 law instance
```

Throughout the docstrings of `Zeta23/`, bracketed labels such as `[prop:PP]`, `[eq:tr2]`, `[thm:E]`, `[lem:R]` are the LaTeX labels of the corresponding statements and equations in the paper's source; they identify which step of the paper a declaration formalizes.

## Building and checking

Install [`elan`](https://github.com/leanprover/elan); the right Lean toolchain is selected automatically
from `lean-toolchain`. Budget several GiB for `.lake/` (the Mathlib cache and the Zeta23 build).

```bash
lake exe cache get        # fetch prebuilt Mathlib for the pinned commit (a few GB). If this fails (no cache
                          # for your platform / offline), just proceed: the next step builds Mathlib from
                          # source, which takes several hours of CPU time but needs nothing else.
lake build                # default targets: library Zeta23 (the headline modules), Challenge and Solution
lake build Solution.XiPrime
lake env lean scripts/PrintAxioms.lean; lake env lean scripts/PrintAxioms/XiPrime.lean   # axiom audit of the 17 + 6 theorems
lake env lean scripts/PrintAxioms/PairCeiling.lean   # axiom audit of the ceiling theorems (no trusted statement file; see AUDIT.md)
ruby scripts/validate-formalization.rb               # formalization.yaml parses, declares Apache-2.0, has no TEMPLATE values
(cd docbuild && lake build Zeta23:docs)              # optional: doc-gen4 API documentation (docbuild/.lake/build/doc; slow — it documents Mathlib too)
```

Expected: no errors; `declaration uses 'sorry'` warnings **only** from the trusted challenge files
(`Challenge.lean`: 17, `Challenge/XiPrime.lean`: 6), which state each theorem with a placeholder proof by design, and
none from `Zeta23/` or any `Solution` module; and 23 lines of the
form `'two_thirds_on_critical_line' depends on axioms: [propext, Classical.choice, Quot.sound]`.
For the strongest independent check — statement equality against the trusted challenge plus kernel replay —
run Comparator as described next.

## Verifying the statements with Comparator

[Comparator](https://github.com/leanprover/comparator), the Lean FRO's trusted-verification tool, builds the *trusted*
challenge module and the *untrusted* solution module in a sandbox, exports both, checks that the solution proves
**exactly** the challenge statements (every constant they mention must coincide), that the proofs use **only** the
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variantf8362dd2b1923fa2046627a8a715902b8fd08e87b5f6f6a406968d74309bedcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variantf8362dd2b1923fa2046627a8a715902b8fd08e87b5f6f6a406968d74309bedcf.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `877f6fc1109967cd7962c5a5bfe0ae432812797f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
