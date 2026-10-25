# dvdProdDvdOfDvdProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:073a75ce0682811bc3cda80e5f8acb95e30f96601c826817ddee443d1834a92a",
  "kind": "def",
  "lexical_name": "dvdProdDvdOfDvdProd",
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
  "slug": "dvdproddvdofdvdprod--65e0ad6e5a5b34c634ce0ec6",
  "source": {
    "blob": "16e6ad06ce019ea97bf4794e71b5ccc08a8eae30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 380,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gcd/Variant718d32982701bb38d5c47b211601c6d66766eabc696bda4501912adb09eb7e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65e0ad6e5a5b34c634ce0ec6577e051458f62d2c67069757d9c426148e2a1416",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant718d32982701bb38d5c47b211601c6d66766eabc696bda4501912adb09eb7e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:073a75ce0682811bc3cda80e5f8acb95e30f96601c826817ddee443d1834a92a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dvdProdDvdOfDvdProd {k m n : Nat} (h : k ∣ m * n) :
    {d : {m' // m' ∣ m} × {n' // n' ∣ n} // k = d.1.val * d.2.val} :=
  if h0 : gcd k m = 0 then
    ⟨⟨⟨0, eq_zero_of_gcd_eq_zero_right h0 ▸ Nat.dvd_refl 0⟩,
      ⟨n, Nat.dvd_refl n⟩⟩,
      eq_zero_of_gcd_eq_zero_left h0 ▸ (Nat.zero_mul n).symm⟩
  else by
    have hd : gcd k m * (k / gcd k m) = k := Nat.mul_div_cancel' (gcd_dvd_left k m)
    refine ⟨⟨⟨gcd k m, gcd_dvd_right k m⟩, ⟨k / gcd k m, ?_⟩⟩, hd.symm⟩
    apply Nat.dvd_of_mul_dvd_mul_left (Nat.pos_of_ne_zero h0)
    rw [hd, ← gcd_mul_right]
    exact Nat.dvd_gcd (Nat.dvd_mul_right _ _) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant718d32982701bb38d5c47b211601c6d66766eabc696bda4501912adb09eb7e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gcd/Variant718d32982701bb38d5c47b211601c6d66766eabc696bda4501912adb09eb7e5c.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e6ad06ce019ea97bf4794e71b5ccc08a8eae30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
