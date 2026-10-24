# sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c4a965eb1b8fc1f1646c6f0113b43f7056b290d7770b8a8e589a7d44932ad6f",
  "kind": "def",
  "lexical_name": "sub",
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
  "slug": "sub--a8a3c1bc626db912db892d6b",
  "source": {
    "blob": "8d15f818aa9f4a5e159709c4f5d2d14c0b7548f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8a3c1bc626db912db892d6b4c88e7ec39fd522789e49f7167780f03b66b95a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c4a965eb1b8fc1f1646c6f0113b43f7056b290d7770b8a8e589a7d44932ad6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sub (iR : Q(Ring $R)) : qNF R M → qNF R M → qNF R M
  | [], l => l.onScalar q(Neg.neg)
  | l, [] => l
  | ((a₁, x₁), k₁) ::ᵣ t₁, ((a₂, x₂), k₂) ::ᵣ t₂ =>
    if k₁ < k₂ then
      ((a₁, x₁), k₁) ::ᵣ sub iR t₁ (((a₂, x₂), k₂) ::ᵣ t₂)
    else if k₁ = k₂ then
      ((q($a₁ - $a₂), x₁), k₁) ::ᵣ sub iR t₁ t₂
    else
      ((q(-$a₂), x₂), k₂) ::ᵣ sub iR (((a₁, x₁), k₁) ::ᵣ t₁) t₂

/-- Given two terms `l₁`, `l₂` of type `qNF R M`, i.e. lists of `(Q($R) × Q($M)) × ℕ`s (two `Expr`s
and a natural number), recursively construct a proof that in the `$R`-module `$M`, the difference
of the "linear combinations" represented by `l₁` and `l₂` is the linear combination represented by
`Module.qNF.sub iR l₁ l₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d15f818aa9f4a5e159709c4f5d2d14c0b7548f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
