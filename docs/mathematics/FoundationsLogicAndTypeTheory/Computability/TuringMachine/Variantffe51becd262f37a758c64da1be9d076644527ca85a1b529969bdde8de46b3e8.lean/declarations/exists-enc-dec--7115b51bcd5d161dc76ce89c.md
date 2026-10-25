# exists_enc_dec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afc8ae03-97da-8300-04ac-921d70b2164d",
  "kind": "theorem",
  "lexical_name": "exists_enc_dec",
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
  "slug": "exists-enc-dec--7115b51bcd5d161dc76ce89c",
  "source": {
    "blob": "8e5b31d39d6dea47790cb5fec7eafa75b7029607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1649,
    "line": 1627,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7115b51bcd5d161dc76ce89c991e4b515e011fbbefabab16a64e7e043013e176",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afc8ae03-97da-8300-04ac-921d70b2164d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1627–1649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_enc_dec [Fintype Γ] : ∃ (n : ℕ) (enc : Γ → Vector Bool n) (dec : Vector Bool n → Γ),
    enc default = Vector.replicate n false ∧ ∀ a, dec (enc a) = a := by
  letI := Classical.decEq Γ
  let n := Fintype.card Γ
  obtain ⟨F⟩ := Fintype.truncEquivFin Γ
  let G : Fin n ↪ Fin n → Bool :=
    ⟨fun a b ↦ a = b, fun a b h ↦
      Bool.of_decide_true <| (congr_fun h b).trans <| Bool.decide_true rfl⟩
  let H := (F.toEmbedding.trans G).trans (Equiv.vectorEquivFin _ _).symm.toEmbedding
  classical
    let enc := H.setValue default (Vector.replicate n false)
    exact ⟨_, enc, Function.invFun enc, H.setValue_eq _ _, Function.leftInverse_invFun enc.2⟩
#align turing.TM1to1.exists_enc_dec Turing.TM1to1.exists_enc_dec

variable {Λ : Type*} [Inhabited Λ]

variable {σ : Type*} [Inhabited σ]

local notation "Stmt₁" => Stmt Γ Λ σ

local notation "Cfg₁" => Cfg Γ Λ σ

/-- The configuration state of the TM. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean#L1627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5b31d39d6dea47790cb5fec7eafa75b7029607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
