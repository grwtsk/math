# evalFinsetIccNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0b5211467eebc4e09bf4af8fed373241ebee2c55a63e960cc38f80cbcc39a5f",
  "kind": "def",
  "lexical_name": "evalFinsetIccNat",
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
  "slug": "evalfinseticcnat--63f3767e71c38a77da1f155c",
  "source": {
    "blob": "14e356a8256e716c51c173b4e26a5952dc244030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinsetInterval/Variante4100bf392637f7ee35a121dfc71be378760036f3af02a4a5a734503ac5ce62b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63f3767e71c38a77da1f155ceb8e1c9dc31b2fa28053f2a80c72e72fe637ce23",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinsetInterval/Variante4100bf392637f7ee35a121dfc71be378760036f3af02a4a5a734503ac5ce62b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0b5211467eebc4e09bf4af8fed373241ebee2c55a63e960cc38f80cbcc39a5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalFinsetIccNat (m n : ℕ) (em en : Q(ℕ)) :
    MetaM ((s : Q(Finset ℕ)) × Q(.Icc $em $en = $s)) := do
  -- If `m = n`, then `Icc m n = {m}`. We handle this case separately because `insert m ∅` is
  -- not syntactically `{m}`.
  if m = n then
    have : $em =Q $en := ⟨⟩
    return ⟨q({$em}), q(Icc_self _)⟩
  -- If `m < n`, then `Icc m n = insert m (Icc (m + 1) n)`.
  else if m < n then
    let hmn : Q(Nat.ble $em $en = true) := (q(Eq.refl true) :)
    have em' : Q(ℕ) := mkNatLitQ (m + 1)
    have : $em' =Q $em + 1 := ⟨⟩
    let ⟨s, hs⟩ ← evalFinsetIccNat (m + 1) n em' en
    return ⟨q(insert $em $s), q(Nat.Icc_eq_insert_of_Icc_succ_eq $hmn $hs)⟩
  -- Else `n < m` and `Icc m n = ∅`.
  else
    let hnm : Q(Nat.blt $en $em = true) := (q(Eq.refl true) :)
    return ⟨q(∅), q(Nat.Icc_eq_empty_of_lt $hnm)⟩

/-- Given integers `m` and `n` and corresponding integer literals `em` and `en`,
returns `(s, ⊢ Finset.Icc m n = s)`.

This cannot be easily merged with `evalFinsetIccNat` since they require different
handling of numerals for `ℕ` and `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinsetInterval/Variante4100bf392637f7ee35a121dfc71be378760036f3af02a4a5a734503ac5ce62b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinsetInterval/Variante4100bf392637f7ee35a121dfc71be378760036f3af02a4a5a734503ac5ce62b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14e356a8256e716c51c173b4e26a5952dc244030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
