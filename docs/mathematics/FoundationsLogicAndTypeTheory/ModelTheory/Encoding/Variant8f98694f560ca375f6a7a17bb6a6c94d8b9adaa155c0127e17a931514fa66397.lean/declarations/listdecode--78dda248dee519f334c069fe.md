# listDecode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61c947b4a1f4734d2a0261929247bf3412cd03313904a02bbfe82b3ae868bcc6",
  "kind": "def",
  "lexical_name": "listDecode",
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
  "slug": "listdecode--78dda248dee519f334c069fe",
  "source": {
    "blob": "bc60d2ebd8cb07f4dc2ac884ea0c32c914f451bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78dda248dee519f334c069fe052ea0b30bd4d793c9cf29ed3958d4a2ba039b91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61c947b4a1f4734d2a0261929247bf3412cd03313904a02bbfe82b3ae868bcc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def listDecode :
    List ((Σk, L.Term (α ⊕ Fin k)) ⊕ ((Σ n, L.Relations n) ⊕ ℕ)) → List (Σ n, L.BoundedFormula α n)
  | Sum.inr (Sum.inr (n + 2))::l => ⟨n, falsum⟩::(listDecode l)
  | Sum.inl ⟨n₁, t₁⟩::Sum.inl ⟨n₂, t₂⟩::l =>
    (if h : n₁ = n₂ then ⟨n₁, equal t₁ (Eq.mp (by rw [h]) t₂)⟩ else default)::(listDecode l)
  | Sum.inr (Sum.inl ⟨n, R⟩)::Sum.inr (Sum.inr k)::l => (
    if h : ∀ i : Fin n, (l.map Sum.getLeft?)[i]?.join.isSome then
        if h' : ∀ i, (Option.get _ (h i)).1 = k then
          ⟨k, BoundedFormula.rel R fun i => Eq.mp (by rw [h' i]) (Option.get _ (h i)).2⟩
        else default
      else default)::(listDecode (l.drop n))
  | Sum.inr (Sum.inr 0)::l => if h : 2 ≤ (listDecode l).length
    then (sigmaImp (listDecode l)[0] (listDecode l)[1])::(drop 2 (listDecode l))
    else []
  | Sum.inr (Sum.inr 1)::l => if h : 1 ≤ (listDecode l).length
    then (sigmaAll (listDecode l)[0])::(drop 1 (listDecode l))
    else []
  | _ => []
  termination_by l => l.length

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc60d2ebd8cb07f4dc2ac884ea0c32c914f451bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
