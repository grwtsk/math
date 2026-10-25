# onModCases_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1f8551e60f23bb6f0d8871e40b1d2531144f83d68f1ce1f66140cc742597099",
  "kind": "def",
  "lexical_name": "onModCases_succ",
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
  "slug": "onmodcases-succ--5e35edfb391bf15596e58b50",
  "source": {
    "blob": "69f1ca36ccee579889b50952f2e53d4f1cffa053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e35edfb391bf15596e58b5077fce1ecfc8fa7578aa3946fa221baf03f635f46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1f8551e60f23bb6f0d8871e40b1d2531144f83d68f1ce1f66140cc742597099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def onModCases_succ {p : Sort*} {n : ℕ} {a : ℤ} (b : ℕ)
    (h : a ≡ OfNat.ofNat b [ZMOD OfNat.ofNat n] → p) (H : OnModCases n a (Nat.add b 1) p) :
    OnModCases n a b p :=
  fun z ⟨h₁, h₂⟩ => if e : b = z then h (e ▸ h₂.2) else H _ ⟨Nat.lt_of_le_of_ne h₁ e, h₂⟩

/--
Proves an expression of the form `OnModCases n a b p` where `n` and `b` are raw nat literals
and `b ≤ n`. Returns the list of subgoals `?gi : a ≡ i [ZMOD n] → p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f1ca36ccee579889b50952f2e53d4f1cffa053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
