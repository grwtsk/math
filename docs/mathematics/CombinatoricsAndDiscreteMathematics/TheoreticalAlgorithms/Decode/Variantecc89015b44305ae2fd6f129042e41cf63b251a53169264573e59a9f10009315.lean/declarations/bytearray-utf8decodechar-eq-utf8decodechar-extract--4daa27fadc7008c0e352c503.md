# ByteArray.utf8DecodeChar?_eq_utf8DecodeChar?_extract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f232885d-2786-f60c-42be-d519d3083e6d",
  "kind": "theorem",
  "lexical_name": "ByteArray.utf8DecodeChar?_eq_utf8DecodeChar?_extract",
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
  "slug": "bytearray-utf8decodechar-eq-utf8decodechar-extract--4daa27fadc7008c0e352c503",
  "source": {
    "blob": "3da200bc971a44b65021684a4764c636c429b09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1301,
    "line": 1268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4daa27fadc7008c0e352c503cdd636bad9e78017ab5681fe098615836631c7d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f232885d-2786-f60c-42be-d519d3083e6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1268–1301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem ByteArray.utf8DecodeChar?_eq_utf8DecodeChar?_extract {b : ByteArray} {i : Nat} :
    utf8DecodeChar? b i = utf8DecodeChar? (b.extract i b.size) 0 := by
  simp [utf8DecodeChar?]
  have h₁ : i < b.size ↔ 0 < b.size - i := by omega
  have h₂ : i + 1 < b.size ↔ 1 < b.size - i := by omega
  have h₃ : i + 2 < b.size ↔ 2 < b.size - i := by omega
  have h₄ : i + 3 < b.size ↔ 3 < b.size - i := by omega
  have h₅ : ∀ h, b[i]'h = (b.extract i b.size)[0]'(by simp; omega) := by simp [ByteArray.getElem_extract]
  have h₆ : ∀ h, b[i + 1]'h = (b.extract i b.size)[1]'(by simp; omega) := by simp [ByteArray.getElem_extract]
  have h₇ : ∀ h, b[i + 2]'h = (b.extract i b.size)[2]'(by simp; omega) := by simp [ByteArray.getElem_extract]
  have h₈ : ∀ h, b[i + 3]'h = (b.extract i b.size)[3]'(by simp; omega) := by simp [ByteArray.getElem_extract]
  have h₉ : (b.extract i b.size).size = b.size - i := by simp
  simp only [h₁]
  split
  · split
    all_goals (rename_i h h'; simp only [h₅] at h')
    · split <;> simp_all
    · split <;> rename_i h''
      all_goals try (simp [h'] at h''; done)
      simp [h₅]
    · symm
      split <;> rename_i h''
      all_goals try (simp [h'] at h''; done)
      simp [h₂, h₅, h₆]
    · symm
      split <;> rename_i h''
      all_goals try (simp [h'] at h''; done)
      simp [h₃, h₅, h₆, h₇]
    · symm
      split <;> rename_i h''
      all_goals try (simp [h'] at h''; done)
      simp [h₄, h₅, h₆, h₇, h₈]
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean#L1268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da200bc971a44b65021684a4764c636c429b09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
