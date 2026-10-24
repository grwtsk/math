# PolyDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c3955164e3ad9dc9db671b7fbdfcb45d1f7dda53a2ed1fa220920aad6975daa",
  "kind": "inductive",
  "lexical_name": "PolyDerivation",
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
  "slug": "polyderivation--69b3df7a724369c629a87cc7",
  "source": {
    "blob": "c4638d5afff95049dcda586f6761eb2f018a0c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 87,
    "path": "GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69b3df7a724369c629a87cc71245b344c003e845aedc1b39b6d6765837e639a8",
  "verification": {
    "reference": "docs/verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c3955164e3ad9dc9db671b7fbdfcb45d1f7dda53a2ed1fa220920aad6975daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
inductive PolyDerivation where
  | input (p : Poly)
  | /--
    ```
    p = k₁*d.getPoly + k₂*m₂*c.p
    ```
    The coefficient `k₁` is used because the leading monomial in `c` may not be monic.
    Thus, if we follow the chain back to the input polynomial, we have that
    `p = C * input_p` for a `C` that is equal to the product of all `k₁`s in the chain.
    We have that `C ≠ 1` only if the ring does not implement `NoNatZeroDivisors`.
    Here is a small example where we simplify `x+y` using the equations
    `2*x - 1 = 0` (`c₁`), `3*y - 1 = 0` (`c₂`), and `6*z + 5 = 0` (`c₃`)
    ```
    x + y + z            | s₁ := .input (x + y + z)
    *2
    =   - 1*1*(2*x - 1)
    2*y + 2*z + 1        | s₂ := .step (2*y + 2*z + 1) 2 s₁ (-1) 1 c₁
    *3
    =   - 2*1*(3*y - 1)
    6*z + 5              | s₃ := .step (6*z + 5) 3 s₂ (-2) 1 c₂
    =   - 1*1*(6*z + 5)
    0                    | s₄ := .step (0) 1 s₃ (-1) 1 c₃
    ```
    For this chain, we build the certificate
    ```
    (-3)*(2*x - 1) + (-2)*(3*y - 1) + (-1)*(6*z + 5)
    ```
    for
    ```
    0 = 6*(x + y + z)
    ```
    Recall that if the ring implement `NoNatZeroDivisors`, then the following property holds:
    ```
    ∀ (k : Int) (a : α), k ≠ 0 → (intCast k) * a = 0 → a = 0
    ```
    grind can deduce that `x+y+z = 0`
    -/
    step (p : Poly) (k₁ : Int) (d : PolyDerivation) (k₂ : Int) (m₂ : Mon) (c : EqCnstr)
  | /--
    Given `c.p == .num k`
    ```
    p = d.getPoly.normEq0 k
    ```
    -/
    normEq0 (p : Poly) (d : PolyDerivation) (c : EqCnstr)

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4638d5afff95049dcda586f6761eb2f018a0c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
