# mkSubProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2184fc0c345cc85309d5a3d99e8d7e6822a50861dae02fcedd6a39906bdd88cf",
  "kind": "def",
  "lexical_name": "mkSubProof",
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
  "slug": "mksubproof--fad8320f515c4cd350a2d662",
  "source": {
    "blob": "0a0bfd2ee6a0415b489d32e3c39c7794614bcd26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fad8320f515c4cd350a2d662464415b18098c661c63dd8ccec922afaf1dfee0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2184fc0c345cc85309d5a3d99e8d7e6822a50861dae02fcedd6a39906bdd88cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSubProof (iR : Q(Ring $R)) (iM : Q(AddCommGroup $M)) (iRM : Q(Module $R $M))
    (l₁ l₂ : qNF R M) :
    Q(NF.eval $(l₁.toNF) - NF.eval $(l₂.toNF) = NF.eval $((qNF.sub iR l₁ l₂).toNF)) :=
  match l₁, l₂ with
  | [], l => (q(NF.zero_sub_eq_eval $(l.toNF)):)
  | l, [] => (q(sub_zero (NF.eval $(l.toNF))):)
  | ((a₁, x₁), k₁) :: t₁, ((a₂, x₂), k₂) :: t₂ =>
    if k₁ < k₂ then
      let pf := mkSubProof iR iM iRM t₁ (((a₂, x₂), k₂) :: t₂)
      (q(NF.sub_eq_eval₁ ($a₁, $x₁) $pf):)
    else if k₁ = k₂ then
      let pf := mkSubProof iR iM iRM t₁ t₂
      (q(NF.sub_eq_eval₂ $a₁ $a₂ $x₁ $pf):)
    else
      let pf := mkSubProof iR iM iRM (((a₁, x₁), k₁) :: t₁) t₂
      (q(NF.sub_eq_eval₃ ($a₂, $x₂) $pf):)

variable {iM : Q(AddCommMonoid $M)}
  {u₁ : Level} {R₁ : Q(Type u₁)} {iR₁ : Q(Semiring $R₁)} (iRM₁ : Q(@Module $R₁ $M $iR₁ $iM))
  {u₂ : Level} {R₂ : Q(Type u₂)} (iR₂ : Q(Semiring $R₂)) (iRM₂ : Q(@Module $R₂ $M $iR₂ $iM))

/-- Given an expression `M` representing a type which is an `AddCommMonoid` and a module over *two*
semirings `R₁` and `R₂`, find the "bigger" of the two semirings.  That is, we assume that it will
turn out to be the case that either (1) `R₁` is an `R₂`-algebra and the `R₂` scalar action on `M` is
induced from `R₁`'s scalar action on `M`, or (2) vice versa; we return the semiring `R₁` in the
first case and `R₂` in the second case.

Moreover, given expressions representing particular scalar multiplications of `R₁` and/or `R₂` on
`M` (a `List (R₁ × M)`, a `List (R₂ × M)`, a pair `(r, x) : R₂ × M`), bump these up to the "big"
ring by applying the algebra-map where needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0bfd2ee6a0415b489d32e3c39c7794614bcd26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
