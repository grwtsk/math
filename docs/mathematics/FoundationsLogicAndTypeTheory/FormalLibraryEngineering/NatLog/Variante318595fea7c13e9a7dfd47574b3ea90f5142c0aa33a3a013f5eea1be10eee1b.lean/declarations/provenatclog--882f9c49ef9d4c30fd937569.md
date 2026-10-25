# proveNatClog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f76940a4648dc3c7eab58f4c813a17d6cb47e91bc2741324d635f027895513f",
  "kind": "def",
  "lexical_name": "proveNatClog",
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
  "slug": "provenatclog--882f9c49ef9d4c30fd937569",
  "source": {
    "blob": "97f5119e89bd9ac57c24649ddd24332e87ac5a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variante318595fea7c13e9a7dfd47574b3ea90f5142c0aa33a3a013f5eea1be10eee1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:882f9c49ef9d4c30fd9375693bd8143fdf2c456da9371abb291ab36d00f4b0da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variante318595fea7c13e9a7dfd47574b3ea90f5142c0aa33a3a013f5eea1be10eee1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f76940a4648dc3c7eab58f4c813a17d6cb47e91bc2741324d635f027895513f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveNatClog (eb en : Q(ℕ)) : (ek : Q(ℕ)) × Q(Nat.clog $eb $en = $ek) :=
  let b := eb.natLit!
  let n := en.natLit!
  if _ : b ≤ 1 then
    have h : Q(Nat.ble $eb 1 = true) := reflBoolTrue
    ⟨q(nat_lit 0), q(nat_clog_zero_left $eb $en $h)⟩
  else if _ : n ≤ 1 then
    have h : Q(Nat.ble $en 1 = true) := reflBoolTrue
    ⟨q(nat_lit 0), q(nat_clog_zero_right $eb $en $h)⟩
  else
    match h : Nat.clog b n with
    | 0 => False.elim <|
      Nat.ne_of_gt (Nat.clog_pos (by lia) (by lia)) h
    | k + 1 =>
      have ek : Q(ℕ) := mkRawNatLit k
      have ek1 : Q(ℕ) := mkRawNatLit (k + 1)
      have _ : $ek1 =Q $ek + 1 := ⟨⟩
      have hb : Q(Nat.blt 1 $eb = true) := reflBoolTrue
      have hl : Q(Nat.blt ($eb ^ $ek) $en = true) := reflBoolTrue
      have hh : Q(Nat.ble $en ($eb ^ ($ek + 1)) = true) := reflBoolTrue
      ⟨ek1, q(nat_clog_helper $hb $hl $hh)⟩

/--
Evaluates the `Nat.clog` function.
-/
@[norm_num Nat.clog _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variante318595fea7c13e9a7dfd47574b3ea90f5142c0aa33a3a013f5eea1be10eee1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variante318595fea7c13e9a7dfd47574b3ea90f5142c0aa33a3a013f5eea1be10eee1b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97f5119e89bd9ac57c24649ddd24332e87ac5a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
