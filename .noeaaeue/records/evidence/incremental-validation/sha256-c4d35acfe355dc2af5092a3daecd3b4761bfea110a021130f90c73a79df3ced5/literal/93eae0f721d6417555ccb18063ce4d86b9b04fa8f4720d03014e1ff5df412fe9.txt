"""Process custody never expands the Lean library's accepted document inputs."""
import unittest
from check_lean_repository_inputs import rejected_document_paths


class LibraryInputBoundary(unittest.TestCase):
    def test_process_custody_documents_are_allowed_without_changing_library_boundary(self):
        paths={'.noeaaeue/evidence/source.pdf','.noeaaeue/cache/archive.TeX',
               'GRWTSK/Analysis/input.PDF','docs/reference/input.tex','root.pdf',
               '.noeaaeuex/input.pdf','docs/.noeaaeue/input.pdf',
               'GRWTSK/Analysis/Theorem.lean','lean-toolchain'}
        self.assertEqual(rejected_document_paths(paths),[
            '.noeaaeuex/input.pdf','GRWTSK/Analysis/input.PDF',
            'docs/.noeaaeue/input.pdf','docs/reference/input.tex','root.pdf'])


if __name__ == '__main__':unittest.main()
