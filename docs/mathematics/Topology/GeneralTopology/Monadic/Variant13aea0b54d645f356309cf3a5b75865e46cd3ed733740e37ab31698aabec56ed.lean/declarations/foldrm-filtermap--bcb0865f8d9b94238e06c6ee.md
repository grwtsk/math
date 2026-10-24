# foldrM_filterMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42662897-46e8-7046-9922-820ac2f17887",
  "kind": "theorem",
  "lexical_name": "foldrM_filterMap",
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
  "slug": "foldrm-filtermap--bcb0865f8d9b94238e06c6ee",
  "source": {
    "blob": "e534dc0c099bb59e3ff9233459b0c0160027bbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcb0865f8d9b94238e06c6ee0aa11f2845631b8165233a3dc6d9660606e7f8d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42662897-46e8-7046-9922-820ac2f17887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldrM_filterMap [Monad m] [LawfulMonad m] {f : α → Option β} {g : β → γ → m γ} {l : List α} {init : γ} :
    (l.filterMap f).foldrM g init =
      l.foldrM (fun x y => match f x with | some b => g b y | none => pure y) init := by
  induction l generalizing init with
  | nil => rfl
  | cons a l ih =>
    simp only [filterMap_cons, foldrM_cons]
    cases f a <;> simp [ih]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e534dc0c099bb59e3ff9233459b0c0160027bbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
